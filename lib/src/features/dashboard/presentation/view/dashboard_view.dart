import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/src/core/components/app_bar.dart';
import 'package:travel_app/src/core/components/drawer.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';
import 'package:travel_app/src/features/dashboard/data/models/dashboard_dot_model.dart';
import 'package:travel_app/src/features/dashboard/data/models/trending_place_model.dart';

@RoutePage(name: 'DashBoardRoute')
class DashBoardView extends StatefulWidget {
  DashBoardView({
    super.key,
  });

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _DashBoardViewState extends State<DashBoardView> {
  @override
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        appBar: AppBarCustom(
          scaffoldKey: _scaffoldKey,
          title: Constants.keys.dashboard,
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20).w,
                      child: Column(
                        children: [
                          TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                              fillColor: AppColor.mineShaft.withOpacity(0.44),
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              hintText: Constants.keys.search,
                              hintStyle: PhoneTextStyle.regularRobotoWhite16,
                              prefixIcon: Icon(
                                  size: 25.w,
                                  Icons.search,
                                  color: AppColor.alto),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          FutureBuilder<List<DashboardImages>>(
                            future: resimleriYukle(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                var urunlerListesi = snapshot.data;
                                return SizedBox(
                                  height: 250.h,
                                  child: PageView.builder(
                                      clipBehavior: Clip.none,
                                      itemCount: urunlerListesi!.length,
                                      controller: _controller,
                                      itemBuilder: (_, i) {
                                        var urun = urunlerListesi[i];
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                clipBehavior: Clip.none,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.r),
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            '${urun.ImagePath}'))),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            child: SmoothPageIndicator(
                              effect: WormEffect(
                                dotWidth: 10,
                                dotHeight: 10,
                              ),
                              controller: _controller,
                              count: 4,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    AutoSizeText(
                                      Constants.keys.trendingPlaces,
                                      style: PhoneTextStyle.regularRobotoAlto20,
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {
                                        context.router.push(PlacesRoute());
                                      },
                                      child: AutoSizeText(
                                        Constants.keys.viewMore,
                                        style:
                                            PhoneTextStyle.regularRobotoAlto12,
                                      ),
                                    ),
                                  ],
                                ),
                                FutureBuilder<List<TrendingPlace>>(
                                  future: verileriYukle(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      var urunlerListesi = snapshot.data;
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 350.h,
                                                width: 330.w,
                                                clipBehavior: Clip.none,
                                                child: GridView.builder(
                                                  itemCount:
                                                      urunlerListesi!.length,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisSpacing: 20.w,
                                                    crossAxisCount: 1,
                                                    childAspectRatio: 2,
                                                  ),
                                                  itemBuilder: (context, i) {
                                                    var urun =
                                                        urunlerListesi[i];
                                                    return GestureDetector(
                                                      onTap: () {
                                                        context.router.push(
                                                            RegisterRoute());
                                                      },
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                              height: 20.h),
                                                          SizedBox(
                                                            height: 270.h,
                                                            width: 220.w,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(12
                                                                              .r),
                                                                      color: AppColor
                                                                          .dustyGray,
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.cover,
                                                                          image: AssetImage(
                                                                            '${urun.imagePath}',
                                                                          ))),
                                                              child: Stack(
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                            16.0)
                                                                        .w,
                                                                    child: Image
                                                                        .asset(
                                                                      '${urun.imgFavori}',
                                                                      scale:
                                                                          1.5.w,
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    bottom:
                                                                        -30.w,
                                                                    left: 5.w,
                                                                    child: Text(
                                                                      '${urun.title}',
                                                                      style: PhoneTextStyle
                                                                          .regularRobotoAlto16,
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    bottom:
                                                                        -50.w,
                                                                    left: 5.w,
                                                                    child: Text(
                                                                      '${urun.subtitle}',
                                                                      style: PhoneTextStyle
                                                                          .regularRobotoSilver12,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
