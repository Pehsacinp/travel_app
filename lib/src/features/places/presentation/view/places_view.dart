import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/src/core/components/drawer.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';
import 'package:travel_app/src/features/dashboard/data/models/trending_place_model.dart';

@RoutePage(name: 'PlacesRoute')
class PlacesView extends StatefulWidget {
  const PlacesView({super.key});

  @override
  State<PlacesView> createState() => _PlacesViewState();
}

class _PlacesViewState extends State<PlacesView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: CustomDrawer(),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        appBar: AppBar(
          bottom: TabBar(
            indicator: GradientUnderlineTabIndicator(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                stops: [
                  0,
                  100
                ],
                colors: [
                  Color(0xFFEA5455),
                  Color(0xFFEC8551),
                ],
              ),
            ),
            labelStyle: PhoneTextStyle.regularRobotoAlto12,
            unselectedLabelStyle: PhoneTextStyle.regularRobotoAlto12,
            tabs: [
              Tab(
                text: Constants.keys.titleAll,
              ),
              Tab(
                text: Constants.keys.titlePopular,
              ),
              Tab(
                text: Constants.keys.titleTrending,
              ),
              Tab(
                text: Constants.keys.titleTopRated,
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu, color: AppColor.alto));
          }),
          centerTitle: true,
          title: AutoSizeText(
            Constants.keys.places,
            style: PhoneTextStyle.regularRobotoAlto24,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: AppColor.alto)),
          ],
        ),
        body: TabBarView(
          clipBehavior: Clip.none,
          children: [
            FutureBuilder<List<TrendingPlace>>(
              future: verileriYukle(),
              builder: (context, snapshot) {
                var urunlerListesi = snapshot.data;

                if (snapshot.hasData) {
                  return SizedBox(
                    height: 400.h,
                    width: 300.w,
                    child: GridView.builder(
                      itemCount: urunlerListesi!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.w,
                        mainAxisExtent: 360.w,
                      ),
                      itemBuilder: (context, i) {
                        var urun = urunlerListesi[i];
                        return GestureDetector(
                          onTap: () {
                            context.router.push(FeaturePlacesRoute(urun: urun));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 300.w,
                                    margin: EdgeInsets.all(12.r),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              '${urun.imagePath}',
                                            )),
                                        borderRadius: BorderRadius.circular(16.r)),
                                  ),
                                  Positioned(
                                    top: 30.w,
                                    left: 25.w,
                                    child: Image.asset(
                                      '${urun.imgFavori}',
                                      scale: 1.5.w,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -40.w,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            '${urun.title}',
                                            style: PhoneTextStyle.regularRobotoAlto16,
                                          ),
                                          AutoSizeText(
                                            '${urun.subtitle}',
                                            style: PhoneTextStyle.regularRobotoSilver12,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Container(color: Colors.yellow),
            Container(color: Colors.blue),
            Container(color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class GradientUnderlineTabIndicator extends Decoration {
  final BorderSide borderSide;
  final EdgeInsetsGeometry insets;
  final LinearGradient gradient;

  const GradientUnderlineTabIndicator({
    this.borderSide = const BorderSide(width: 2.0, color: Colors.white),
    this.insets = EdgeInsets.zero,
    required this.gradient,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _GradientUnderlinePainter(this, onChanged);
  }
}

class _GradientUnderlinePainter extends BoxPainter {
  final GradientUnderlineTabIndicator decoration;

  _GradientUnderlinePainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;
    final TextDirection textDirection = configuration.textDirection!;
    final Rect indicator = decoration.insets.resolve(textDirection).deflateRect(rect);
    final Paint paint = decoration.borderSide.toPaint()..shader = decoration.gradient.createShader(indicator);
    final double indicatorHeight = decoration.borderSide.width;
    final Rect indicatorRect = Rect.fromLTWH(
      indicator.left,
      indicator.bottom - indicatorHeight,
      indicator.width,
      indicatorHeight,
    );
    canvas.drawRect(indicatorRect, paint);
  }
}
