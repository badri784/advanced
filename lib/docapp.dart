import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/routing/app_router.dart';
import 'package:project/core/theming/colors.dart';

class Docapp extends StatelessWidget {
  final AppRouter appRouter;
  const Docapp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          appBarTheme: AppBarTheme(
            color: ColorsManager.mainBlue,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
            iconTheme: IconThemeData(color: Colors.white, size: 24.sp),
          ),
        ),
        home: null,
      ),
    );
  }
}
