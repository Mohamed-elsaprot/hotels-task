import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/app_texts.dart';
import 'package:hotels_task/core/utils/styles.dart';

class SortSheetBar extends StatelessWidget {
  const SortSheetBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              leading: Container(),
              centerTitle: true,
              title: Text(AppTexts.sort,style: Styles.textStyle1),
              actions: [
                IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.clear,color: Colors.black,))
              ],
            ),
            const Divider(color: Styles.starsColor,indent: 15,endIndent: 15,)
          ],
        ));
  }
}
