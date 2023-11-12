import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/routers.dart';
import 'package:hotels_task/core/utils/service_locator.dart';
import 'package:hotels_task/core/utils/styles.dart';


void main() async{
  setupGetItService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(411.4, 683.4),
      builder: (_,child){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Styles.scaffoldColor,
            appBarTheme: const AppBarTheme(
                color: Styles.white
            ),
          ),
        );
      },
    );
  }
}



