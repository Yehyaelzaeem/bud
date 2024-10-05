import 'package:bud/core/utils/helper_methods.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/resources/colors/color.dart';
import 'core/routing/navigation_services.dart';
import 'core/routing/route_generator.dart';
import 'core/routing/routes.dart';

void main() async {
  bool isfirsttime = await HelperMethods.isFirstTime();
  runApp(EasyLocalization(
          supportedLocales: supportedLocales,
          path: 'assets/translation',
          fallbackLocale: supportedLocales[0],
          saveLocale: true,
          useOnlyLangCode: true,
          startLocale: supportedLocales[0],
          child: MyApp(
            is_first_time: isfirsttime,
          ))
      // DevicePreview(
      //   enabled: false,
      //   builder: (context) => const MyApp(),
      // ),
      );
  print(isfirsttime);
}

final supportedLocales = <Locale>[
  const Locale('en'),
  const Locale('ar'),
];

//Test
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.is_first_time});
  final bool? is_first_time;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bud',
          navigatorKey: NavigationService.navigationKey,
          onGenerateRoute: RouteGenerator.generateBaseRoute,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            primaryColor: primaryColor,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.white),
          ),
          initialRoute: is_first_time == true
              ? Routes.onBoardingScreen
              : Routes.loginscreen,
//theme.colorScheme.ba
          // home: SidebarXExampleApp(),
        );
      },
    );
  }
}
