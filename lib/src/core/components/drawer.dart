import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_images.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';

@RoutePage(name: 'CustomDrawerRouter')
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: AutoSizeText(
                "Nelle Moran",
                style: PhoneTextStyle.regularRobotoWhite18,
              ),
              accountEmail: AutoSizeText(
                "Traveller",
                style: PhoneTextStyle.regularRobotoWhite12,
              ),
              currentAccountPicture: Container(
                width: 72.0.w,
                height: 72.0.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.profileCardImg),
                  ),
                  color: AppColor.dustyGray,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
                child: Center(
                  child: Container(
                    width: 72.0.w,
                    height: 72.0.h,
                    child: AutoSizeText(
                      "",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide.none,
                ),
              ),
              margin: EdgeInsets.only(bottom: 20.w),
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_rounded,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                style: PhoneTextStyle.regularRobotoWhite20,
                'Account',
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to home
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Profile',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to settings
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Notifications',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to settings
              },
            ),
            ListTile(
              leading: Icon(
                Icons.photo_library,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Gallery',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to settings
              },
            ),
            ListTile(
              leading: Icon(
                Icons.place,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Favorite Places',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to settings
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_activity,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Subscription',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to settings
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: AppColor.white,
                size: 24.sp,
              ),
              title: AutoSizeText(
                'Settings',
                style: PhoneTextStyle.regularRobotoWhite20,
              ),
              onTap: () {
                context.router.push(SettingsViewRouter());
              },
            ),
          ],
        ),
      ),
    );
  }
}
