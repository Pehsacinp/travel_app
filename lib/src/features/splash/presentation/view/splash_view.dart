import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:travel_app/src/core/constants/app_const.dart';
import 'package:travel_app/src/core/functions/app_color.dart';
import 'package:travel_app/src/core/functions/app_images.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';
import 'package:travel_app/src/core/functions/app_textstyle.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';
import 'package:travel_app/src/features/splash/presentation/bloc/splash_cubit.dart';

@RoutePage(name: 'SplashRoute')
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final PageController _pageController = PageController(keepPage: true);

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const _WelcomeView(),
      const _LoginView(),
      const WalkThroughView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashCubit, int>(
        listener: (context, pageIndex) {
          _pageController.jumpToPage(pageIndex);
        },
        builder: (context, pageIndex) {
          return PreloadPageView.builder(
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index];
            },
            onPageChanged: (int position) {},
            preloadPagesCount: 3,
            controller: PreloadPageController(),
          );
        },
      ),
    );
  }
}

class _WelcomeView extends StatefulWidget {
  const _WelcomeView({super.key});

  @override
  State<_WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<_WelcomeView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.dustyGray,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.60,
            image: const AssetImage(AppImages.imgSairTwo),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                Constants.keys.sair,
                style: PhoneTextStyle.regularRobotoWhite32,
              ),
              Center(
                child: AutoSizeText(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  Constants.keys.exploreWonderful,
                  style: PhoneTextStyle.regularRobotoWhite24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _LoginView extends StatefulWidget {
  const _LoginView({super.key});

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColor.dustyGray,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.60,
            image: const AssetImage(AppImages.imgLogin),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 25.h),
              AutoSizeText(
                Constants.keys.login,
                style: PhoneTextStyle.regularRobotoWhite36,
              ),
              Column(
                children: [
                  SizedBox(height: 50.h),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      fillColor: AppColor.mineShaft.withOpacity(0.44),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      hintText: Constants.keys.username,
                      hintStyle: PhoneTextStyle.regularRobotoWhite16,
                      prefixIcon: Icon(
                        size: 25.w,
                        Icons.person,
                        color: AppColor.alto,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      fillColor: AppColor.mineShaft.withOpacity(0.44),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      hintText: Constants.keys.password,
                      hintStyle: PhoneTextStyle.regularRobotoWhite16,
                      prefixIcon: Icon(size: 25.w, Icons.lock, color: AppColor.alto),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.h),
              Column(
                children: [
                  Container(
                    width: 650.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        stops: [
                          0,
                          1
                        ],
                        colors: [
                          Color(0xFFEA5455),
                          Color(0xFFEC8551)
                        ],
                      ),
                      boxShadow: [
                        Const.shadow
                      ],
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: AutoSizeText(
                        Constants.keys.login,
                        style: PhoneTextStyle.regularRobotoWhite24,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {},
                    child: AutoSizeText(
                      Constants.keys.forgotPassword,
                      style: PhoneTextStyle.regularRobotoWhite12,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      context.router.push(const RegisterRoute());
                    },
                    child: AutoSizeText(
                      Constants.keys.register,
                      style: PhoneTextStyle.regularRobotoWhite12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

@RoutePage(name: 'RegisterRoute')
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColor.dustyGray,
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              opacity: 0.60,
              image: const AssetImage(AppImages.imgRegister),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Form(
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 80.h),
                  AutoSizeText(
                    Constants.keys.register,
                    style: PhoneTextStyle.regularRobotoWhite36,
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    children: [
                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: AppColor.mineShaft.withOpacity(0.44),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          hintText: Constants.keys.fullName,
                          hintStyle: PhoneTextStyle.regularRobotoWhite16,
                          prefixIcon: Icon(size: 25.w, Icons.lock, color: AppColor.alto),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: AppColor.mineShaft.withOpacity(0.44),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          hintText: Constants.keys.emailAddress,
                          hintStyle: PhoneTextStyle.regularRobotoWhite16,
                          prefixIcon: Icon(size: 25.w, Icons.email, color: AppColor.alto),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: AppColor.mineShaft.withOpacity(0.44),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          hintText: Constants.keys.birthDate,
                          hintStyle: PhoneTextStyle.regularRobotoWhite16,
                          prefixIcon: Image.asset(AppImages.calendar),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: AppColor.mineShaft.withOpacity(0.44),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          hintText: Constants.keys.mobilNumber,
                          hintStyle: PhoneTextStyle.regularRobotoWhite16,
                          prefixIcon: Icon(
                            Icons.phone_iphone_outlined,
                            color: AppColor.alto,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    width: 650.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        stops: [
                          0,
                          1
                        ],
                        colors: [
                          Color(0xFFEA5455),
                          Color(0xFFEC8551)
                        ],
                      ),
                      boxShadow: [
                        Const.shadow
                      ],
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: AutoSizeText(
                        Constants.keys.register,
                        style: PhoneTextStyle.regularRobotoWhite24,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      context.router.pop();
                    },
                    child: AutoSizeText(
                      Constants.keys.registeredAlreadyLogin,
                      style: PhoneTextStyle.regularRobotoWhite12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

@RoutePage(name: 'WalkThroughRoute')
class WalkThroughView extends StatelessWidget {
  const WalkThroughView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.dustyGray,
      resizeToAvoidBottomInset: false,
      body: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: Colors.black38,
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.60,
            image: const AssetImage(AppImages.imgSair),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 25.h),
              AutoSizeText(
                Constants.keys.sair,
                style: PhoneTextStyle.regularRobotoWhite36,
              ),
              SizedBox(height: 190.h),
              Center(
                child: AutoSizeText(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  Constants.keys.exploreWonderful,
                  style: PhoneTextStyle.regularRobotoWhite24,
                ),
              ),
              SizedBox(height: 170.h),
              Column(
                children: [
                  Container(
                    width: 650.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        stops: [
                          0,
                          1
                        ],
                        colors: [
                          Color(0xFFEA5455),
                          Color(0xFFEC8551)
                        ],
                      ),
                      boxShadow: [
                        Const.shadow
                      ],
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        context.router.push(DashBoardRoute());
                      },
                      child: AutoSizeText(
                        Constants.keys.takeTour,
                        style: PhoneTextStyle.regularRobotoWhite24,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {},
                    child: AutoSizeText(
                      Constants.keys.skip,
                      style: PhoneTextStyle.regularRobotoWhite12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
