import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/app_texts.dart';
import 'package:hotels_task/core/utils/styles.dart';

import '../../../../../core/utils/fun.dart';

class RatingColumn extends StatelessWidget {
  const RatingColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.h*.85,),
          Text(AppTexts.rating, style: Styles.textStyle2,),
          SizedBox(height: 20.h*.85,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ratingContainer(0, Colors.red),
              ratingContainer(7, Colors.orange),
              ratingContainer(7.5, const Color(0xff32af43)),
              ratingContainer(8, const Color(0xff248531)),
              ratingContainer(8.5, const Color(0xff185d21)),
            ],
          ),
          SizedBox(height: 40.h*.85,),
          Text(AppTexts.hotelClass, style: Styles.textStyle2,),
          SizedBox(height: 20.h*.85,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              starContainer(1),
              starContainer(2),
              starContainer(3),
              starContainer(4),
              starContainer(5),
            ],
          ),
          SizedBox(height: 30.h*.85,),
          Text(AppTexts.distanceFrom, style: Styles.textStyle2,),
          SizedBox(height: 30.h*.85,),
          Row(
            children: [
               Text(AppTexts.location,style: TextStyle(fontSize: 20.sp*.85,),),
              const Spacer(),
              TextButton(onPressed: (){}, child: Row(
                children: [
                  Text('City center',style: TextStyle(fontSize: 18.sp*.85,fontWeight: FontWeight.w300,color: Colors.black)),
                  SizedBox(width: 10.w,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Styles.starsColor,size: 20.sp*.85,)
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
