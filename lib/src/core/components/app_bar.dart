import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;

  AppBarCustom({super.key, required this.title, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(360.w, 25.h),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0).w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: AppColor.alto,
                    ),
                  )),
              Expanded(
                flex: 8,
                child: Text(
                  title,
                  style: PhoneTextStyle.regularRobotoAlto20,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(flex: 1, child: Icon(Icons.search, color: AppColor.alto)),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
