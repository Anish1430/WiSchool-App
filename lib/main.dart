import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/mobile_screen.dart';
import 'core/utils/size_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        initGlobalContext(context);   // Ensure this function is defined and properly used
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MobileScreen(),
        );
      },
    );
  }
}