import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({Key? key, required this.text, required this.iconPath,required this.onPressed, this.underLine=false}) : super(key: key);
  final String text,iconPath;
  final void Function()? onPressed;
  final bool? underLine;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(iconPath,height: 30.h,),
          SizedBox(width: 6.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Styles.mainColor),),
              if(underLine!) Container(height: 1.h,width: 40.w,color: Styles.mainColor,)
            ],
          )
        ],
      ),
    );
  }
}
