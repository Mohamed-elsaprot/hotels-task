import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_texts.dart';
import '../../../../../core/utils/styles.dart';

class ShowResultsButton extends StatelessWidget {
  const ShowResultsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 50.h*.9),
          SizedBox(
              width: 350.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.mainColor,
                      padding: EdgeInsets.symmetric(vertical: 14.h*.85),
                      textStyle: TextStyle(fontSize: 20.sp*.85,fontWeight: FontWeight.bold)
                  ),
                  onPressed: (){}, child: const Text(AppTexts.showResults),),),
        ],
    );
  }
}
