import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/filter_sheet_wiggets/rating_column.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/filter_sheet_wiggets/sheet_bar.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/filter_sheet_wiggets/sheet_slider_column.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/filter_sheet_wiggets/show_results_button.dart';


class FilterSheetBody extends StatelessWidget {
  const FilterSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620.h,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.vertical(top: Radius.circular(12.r))),
      child: const Column(
        children: [
          SheetBar(),
          SliderColumn(),
          RatingColumn(),
          ShowResultsButton()
        ],
      ),
    );
  }
}
