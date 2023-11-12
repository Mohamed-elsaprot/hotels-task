import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles{
  static final scaffoldColor = Colors.white.withOpacity(.9);
  static const white = Colors.white;
  static const mainColor = Color(0xff0288b2);
  static const greenColor = Color(0xff276c4d);
  static const starsColor = Colors.black54;
  static const gold = Colors.orange;

  static final textStyle1= TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.black);
  static final textStyle2= TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w800,letterSpacing: 2.sp);
}