import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/styles.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

import 'app_images.dart';
import 'app_texts.dart';


customSnackBar(BuildContext context,String message){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: AwesomeSnackbarContent(
        title: message,
         contentType: ContentType.failure,
        message: '',
      ))
  );
}

loading(){
  return Center(
    child: SizedBox(
      height: 100.sp,
      width: 100.sp,
      child: LiquidCircularProgressIndicator(
        value: 0.7,
        valueColor: const AlwaysStoppedAnimation(Colors.lightBlue,),
        backgroundColor: Colors.white,
        direction: Axis.vertical,
        center: const Text("Loading...",style: TextStyle(color: Colors.white),),
      ),
    ),
  );
}

bottomSheet(BuildContext context,Widget body){
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12.r))),
      builder: (context){
    return body;
  });
}

ratingContainer(double rate, Color color) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      color: color,
    ),
    height: 50.sp*.85, width: 50.sp*.85,
    child: Center(child: Text('${rate == 0 ? 0 : rate}+', style: TextStyle(
        fontSize: 17.sp*.85, fontWeight: FontWeight.bold, color: Colors.white),)),
  );
}

starContainer(int star) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      border: Border.all(color: Styles.gold, width: 1),
    ),
    height: 50.sp*.85, width: 50.sp*.85,
    child: Center(
        child: stars(star)
    ),
  );
}

stars(int x,) {
  Widget star =  Icon(Icons.star, color: Styles.gold,size: 22.sp*.85,);
  if (x == 1) {
    return star;
  }
  if (x == 2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        star,
        star,
      ],
    );
  }
  if (x == 3) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        star,
        stars(2)
      ],
    );
  }
  if (x == 4) {
    return Column(
      children: [
        stars(2),
        stars(2),
      ],
    );
  }
  if (x == 5) {
    return Image.asset(AppImages.stars,);
  }
}


sortTile({required Function(bool?) onChange,required bool val,required String title}){
  return Column(
    children: [
      CheckboxListTile(
          title: const Text(AppTexts.ourRecommendations),
          side: const BorderSide(color: Colors.transparent),
          activeColor: Colors.transparent,
          checkColor: Styles.mainColor,
          value: val,
          onChanged: onChange
      ),
      divider()
    ],
  );
}

divider(){
  return const Divider(indent: 15,endIndent: 15,color: Styles.starsColor,);
}