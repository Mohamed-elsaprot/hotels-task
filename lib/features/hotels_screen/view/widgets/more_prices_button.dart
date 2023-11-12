import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_texts.dart';
import '../../../../core/utils/styles.dart';

class MorePricesButton extends StatelessWidget {
  const MorePricesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(right: 20.w,bottom: 6.h),
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Text(AppTexts.morePrices,style: TextStyle(color: Styles.starsColor,fontSize: 15.sp,fontWeight: FontWeight.bold),),
            Container(height: 2.h,width: 80.w,color: Styles.starsColor,)
          ],
        ),
      ),
    );
  }
}
