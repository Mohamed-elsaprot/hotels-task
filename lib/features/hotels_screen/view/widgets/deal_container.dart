import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/features/hotels_screen/data/models/Hotel.dart';

import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/styles.dart';

class DealContainer extends StatelessWidget {
  const DealContainer({Key? key, required this.hotel}) : super(key: key);
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r), border: Border.all(width: 1, color: Styles.starsColor)),
      child: Padding(
        padding: EdgeInsets.all(12.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(6.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: Styles.mainColor.withOpacity(.3),
              ),
              child: Text(AppTexts.ourLowestPrice, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),),),
            SizedBox(height: 6.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${hotel.price}', style: TextStyle(fontSize: 20.sp, color: const Color(0xff1c8a57), fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text(AppTexts.viewDeal, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
                    SizedBox(width: 8.w,),
                    Icon(Icons.arrow_forward_ios_rounded, size: 18.sp,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6.h,),
            Text(AppTexts.renaissance, style: TextStyle(fontSize: 14.sp,),),
          ],
        ),
      ),
    );
  }
}
