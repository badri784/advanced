import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/routing/app_router.dart';
import 'package:project/core/routing/routes.dart';
import 'package:project/core/theming/colors.dart';

class Docapp extends StatelessWidget {
  final AppRouter appRouter;
  const Docapp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onboardingRoute,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: null,
      ),
    );
  }
}
