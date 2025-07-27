import 'package:auto_animated/auto_animated.dart';
import 'package:coaching_app/features/assessment/auth/height/presentation/height_screen.dart';
import 'package:coaching_app/features/assessment/auth/sign_in_screen/presentation/sign_in_screen.dart';
import 'package:coaching_app/helpers/all_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'assets_helper/app_colors.dart';
import 'features/assessment/auth/kg/presentation/kg_screen.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/language.dart';
import 'helpers/navigation_service.dart';
import 'helpers/register_provider.dart';
import 'networks/dio/dio.dart';


void main() async {
  if (kDebugMode) {
    print(
        ':::::::::::::::::::::::::: main Screeen:::::::::::::::::::::::::::::');
  }


  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();
  DioSingleton.instance.create();

  runApp(

    //
    // DevicePreview(
    //   builder: (context) => MyApp(),
    // ),

     MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // rotation();
    // setInitValue();

    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          // ignore: deprecated_member_use
          onPopInvoked: (bool didPop) async {
            //showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          // ignore: deprecated_member_use
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            theme: ThemeData(
              primaryColor: AppColor.primaryColor,
              scaffoldBackgroundColor: AppColor.cFFFFFF,

              // Button Theme
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  foregroundColor: AppColor.cFFFFFF,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              // TextField Theme
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: AppColor.cF3F2FF, // background of text field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColor.cDFE1E7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryColor),
                ),
                hintStyle: TextStyle(color: AppColor.c848585),
              ),

              // Text Theme
              textTheme: const TextTheme(
                headlineLarge: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.c1B1B1D,
                ), // title
                titleMedium: TextStyle(
                  fontSize: 18,
                  color: AppColor.c1B1B1D,
                ), // subtitle
                bodyMedium: TextStyle(
                  fontSize: 16,
                  color: AppColor.c848585,
                ), // regular text
              ),
            ),
            debugShowCheckedModeBanner: false,
            translations: LocalString(),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,

            onGenerateRoute: RouteGenerator.generateRoute,

            home:  SignInScreen (),


            //home:  OtpScreen(),
          ),
        );
      },
    );
  }
}
