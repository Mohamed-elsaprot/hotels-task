import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:star_rating/star_rating.dart';

import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/styles.dart';

class RatingLocationColumn extends StatelessWidget {
  const RatingLocationColumn({Key? key, required this.rating, required this.reviewScore, required this.address, required this.review, required this.name}) : super(key: key);
  final double rating,reviewScore;
  final String name,address,review;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            StarRating(
              color: Styles.starsColor,
              length: rating.toInt(),
              rating: rating,
              starSize: 16.sp,
            ),
            SizedBox(width: 5.w,),
            Text(AppTexts.hotel,style: TextStyle(fontSize: 15.sp),)
          ],
        ),
        SizedBox(height: 5.h,),
        Text(' $name',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
        SizedBox(height: 5.h,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Styles.greenColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
              child: Text('$reviewScore',style: const TextStyle(color: Styles.white,fontWeight: FontWeight.bold),),
            ),
            SizedBox(width: 6.w,),
            Text(review),
            SizedBox(width: 8.w,),
            Row(
              children: [
                Icon(Icons.location_on_sharp,size: 15.sp,color: Styles.starsColor,),
                SizedBox(width: 4.w,),
                Text(address)
              ],
            )
          ],
        )
      ],
    );
  }
}
