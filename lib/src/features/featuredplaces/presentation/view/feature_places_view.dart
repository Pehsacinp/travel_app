import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/src/core/components/app_bar.dart';
import 'package:travel_app/src/core/components/drawer.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_images.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';
import 'package:travel_app/src/features/dashboard/data/models/trending_place_model.dart';

@RoutePage(name: 'FeaturePlacesRoute')
// ignore: must_be_immutable
class FeaturePlacesView extends StatefulWidget {
  FeaturePlacesView({super.key, required this.urun});
  TrendingPlace urun;

  @override
  State<FeaturePlacesView> createState() => _FeaturePlacesViewState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _FeaturePlacesViewState extends State<FeaturePlacesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20).w,
        decoration: BoxDecoration(
            color: Colors.black38,
            image: DecorationImage(
              fit: BoxFit.fill,
              opacity: 0.60,
              image: AssetImage('${widget.urun.imagePath}'),
            )),
        child: Column(
          children: [
            Container(
                child: Column(
              children: [
                AppBarCustom(
                  title: Constants.keys.featuredplace,
                  scaffoldKey: _scaffoldKey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 30).w,
                  child: Row(
                    children: [
                      Image.asset(
                        '${widget.urun.imgFavori}',
                        scale: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Spacer(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  AutoSizeText(
                    Constants.keys.contentTitle,
                    style: PhoneTextStyle.regularRobotoWhite32,
                  ),
                  SizedBox(height: 15.h),
                  Image.asset(
                    AppImages.rateIcon,
                    scale: 1.5,
                  ),
                  SizedBox(height: 15.h),
                  AutoSizeText(
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    Constants.keys.contentSubtitle,
                    style: PhoneTextStyle.regularRobotoWhite20,
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    height: 60.h,
                    width: 650.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.tundora.withOpacity(0.100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r),
                            side: BorderSide(
                              color: AppColor.white,
                              width: 2,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: AutoSizeText(
                          Constants.keys.contentReadMore,
                          style: PhoneTextStyle.regularRobotoAlto20,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h)
          ],
        ),
      ),
    );
  }
}
