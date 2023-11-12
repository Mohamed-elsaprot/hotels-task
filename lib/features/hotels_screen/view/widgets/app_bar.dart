import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/app_images.dart';
import 'package:hotels_task/core/utils/app_texts.dart';
import 'package:hotels_task/core/utils/fun.dart';
import 'package:hotels_task/core/utils/styles.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/appbar_button.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/filter_sheet_wiggets/filter_sheet_body.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/sort_sheet_widgets/sort_sheet_body.dart';


class HotelsScreenAppBar extends StatelessWidget {
   const HotelsScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 5), blurRadius: 10)
          ],
          color: Styles.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppBarButton(
            text: AppTexts.filters,
            iconPath: AppImages.filterIcon,
            onPressed: () => bottomSheet(context, const FilterSheetBody(),),
          ),
          AppBarButton(
            text: AppTexts.sort,
            iconPath: AppImages.sortIcon,
            underLine: true,
            onPressed: () => bottomSheet(context, const SortSheetBody()),
          ),
        ],
      ),
    );
  }
}
