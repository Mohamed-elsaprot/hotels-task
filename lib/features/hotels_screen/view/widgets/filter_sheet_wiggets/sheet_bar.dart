import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_texts.dart';
import '../../../../../core/utils/styles.dart';

class SheetBar extends StatelessWidget {
  const SheetBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(12.r))),
      height: 60.h*.85,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppTexts.reset,
                  style: TextStyle(
                    fontSize: 22.sp*.85,
                    fontWeight: FontWeight.w400,
                    color: Styles.starsColor,
                  ),
                ),
                Container(
                  height: 1,
                  width: 55.sp*.85,
                  color: Styles.starsColor,
                ),
              ],
            ),
          ),
          Text(
            AppTexts.filters,
            style: Styles.textStyle1,
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.clear,
              size: 30.sp*.85,
            ),
          ),
        ],
      ),
    );
  }
}
