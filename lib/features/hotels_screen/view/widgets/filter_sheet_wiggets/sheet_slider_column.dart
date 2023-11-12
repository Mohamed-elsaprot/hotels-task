import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_texts.dart';
import '../../../../../core/utils/styles.dart';

class SliderColumn extends StatefulWidget {
  const SliderColumn({Key? key}) : super(key: key);

  @override
  State<SliderColumn> createState() => _SliderColumnState();
}

class _SliderColumnState extends State<SliderColumn> {
  double v = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(height: 10.h*.85,),
          Row(
            children: [
              Text(AppTexts.pricePerNight, style: Styles.textStyle2),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Styles.starsColor, width: 1)),
                padding: EdgeInsets.all(12.sp*.85),
                child: Text(
                  '540+ \$',
                  style: TextStyle(fontSize: 22.sp*.85),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h*.85,),
          Slider(
              thumbColor: Colors.white,
              activeColor: Styles.mainColor,
              min: 20,
              max: 540,
              value: v,
              onChanged: (x) {
                setState(() {});
                v = x;
              }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 5.h*.85),
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 20.sp*.85,
                color: Styles.starsColor,
              ),
              child: const Row(
                children: [
                  Text('\$20'),
                  Spacer(),
                  Text('\$540'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
