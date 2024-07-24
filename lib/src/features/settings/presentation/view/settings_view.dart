import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/src/core/components/app_bar.dart';
import 'package:travel_app/src/core/components/drawer.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';

@RoutePage(name: 'SettingsViewRouter')
class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _scaffoldKey,
      backgroundColor: AppColor.tundora,
      appBar: AppBarCustom(
        title: Constants.keys.titleSettings,
        scaffoldKey: _scaffoldKey,
      ),
      body: ListView(
        children: [
          ListTile(
            title: AutoSizeText(
              Constants.keys.titleAccount,
              style: PhoneTextStyle.regularRobotoAlto16,
            ),
          ),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 20.w),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: AppColor.dustyGray,
                  )),
              title: AutoSizeText(
                Constants.keys.titleProfile,
                style: PhoneTextStyle.regularRobotoAlto20,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titleAccount,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titleSubscription,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
          Divider(
            indent: 20.w,
            endIndent: 15.w,
            thickness: 1,
            color: AppColor.silver,
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            title: AutoSizeText(
              Constants.keys.titlePrivacy,
              style: PhoneTextStyle.regularRobotoAlto16,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titleLocation,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titlePublicView,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
          Divider(
            indent: 20.w,
            endIndent: 15.w,
            thickness: 1,
            color: AppColor.silver,
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            title: AutoSizeText(
              Constants.keys.titleNotifications,
              style: PhoneTextStyle.regularRobotoAlto16,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titleOfferAlerts,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20.w),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColor.dustyGray,
                )),
            title: AutoSizeText(
              Constants.keys.titleMessages,
              style: PhoneTextStyle.regularRobotoAlto20,
            ),
          ),
        ],
      ),
    );
  }
}
