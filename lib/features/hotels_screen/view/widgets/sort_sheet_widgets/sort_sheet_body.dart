import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/sort_sheet_widgets/sort_list.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/sort_sheet_widgets/sort_sheet_bar.dart';

class SortSheetBody extends StatelessWidget {
  const SortSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 620.h,
      child: const Column(
        children: [
          SortSheetBar(),
          SortList(),
        ],
      ),
    );
  }
}
