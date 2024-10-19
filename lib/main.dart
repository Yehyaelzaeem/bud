import 'package:bud/core/utils/helper_methods.dart';
import 'package:bud/src/auth/logic/auth_cubit.dart';
import 'package:bud/src/layout/layout_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'core/di/dependency_injection.dart';
import 'core/resources/colors/color.dart';
import 'core/routing/navigation_services.dart';
import 'core/routing/route_generator.dart';
import 'core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  setupGetIt();
  runApp(EasyLocalization(
          supportedLocales: supportedLocales,
          path: 'assets/translation',
          fallbackLocale: supportedLocales[0],
          saveLocale: true,
          useOnlyLangCode: true,
          startLocale: supportedLocales[0],
          child: MyApp())
      // DevicePreview(
      //   enabled: false,
      //   builder: (context) => const MyApp(),
      // ),
      );
}

final supportedLocales = <Locale>[
  const Locale('ar'),
  const Locale('en'),
];

//Test
class MyApp extends StatelessWidget {
   MyApp({super.key,});
  bool isFirstTime =  HelperMethods.isFirstTime();

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthCubit(getIt())),
        ],
        child: ScreenUtilInit(
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
              // initialRoute: isFirstTime == true
              //     ? Routes.onBoardingScreen
              //     : Routes.loginscreen,
          home: LayoutScreen(),
            );
          },
        )
      );
  }
}
