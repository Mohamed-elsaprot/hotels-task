import 'package:flutter/material.dart';
import 'package:hotels_task/core/utils/app_texts.dart';

import '../../../../../core/utils/fun.dart';

class SortList extends StatefulWidget {
  const SortList({Key? key}) : super(key: key);

  @override
  State<SortList> createState() => _SortListState();
}

class _SortListState extends State<SortList> {
  bool val1 = false,val2 = false,val3 = false,val4 = false,val5 = false,val6 = false,val7 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sortTile(onChange:(x){setState(() {});val1=x!;}, val: val1, title: AppTexts.ourRecommendations),
          sortTile(onChange:(x){setState(() {});val2=x!;}, val: val2, title: AppTexts.ratingAndRecommended),
          sortTile(onChange:(x){setState(() {});val3=x!;}, val: val3, title: AppTexts.priceAndRecommended),
          sortTile(onChange:(x){setState(() {});val4=x!;}, val: val4, title: AppTexts.distanceAndRecommended),
          sortTile(onChange:(x){setState(() {});val5=x!;}, val: val5, title: AppTexts.ratingOnly),
          sortTile(onChange:(x){setState(() {});val6=x!;}, val: val6, title: AppTexts.priceOnly),
          sortTile(onChange:(x){setState(() {});val7=x!;}, val: val7, title: AppTexts.distanceOnly),
        ],
      ),
    );
  }
}

