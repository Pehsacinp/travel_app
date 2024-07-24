import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:travel_app/src/core/bloc/blocs.dart';
import 'package:travel_app/src/core/constants/app_const.dart';
import 'package:travel_app/src/core/functions/app_images.dart';
import 'package:travel_app/src/core/functions/is_mobile.dart';
import 'package:travel_app/src/core/routing/router.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("myBox");
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((value) => runApp(Zone()));
  runApp(Zone());
}

class Zone extends StatelessWidget {
  Zone({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return AppBlocProviders(
      child: ScreenUtilInit(
        designSize: IsItPhone.getDeviceType() ? const Size(375, 812) : const Size(768, 1024),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            theme: ThemeData(
              tabBarTheme: TabBarTheme(
                dividerColor: Color.fromARGB(255, 39, 39, 39),
              ),
              dividerTheme: DividerThemeData(color: Colors.transparent),
              fontFamily: "Roboto",
            ),
            builder: EasyLoading.init(),
            supportedLocales: const [
              Locale('tr')
            ],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: Const.title,
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
