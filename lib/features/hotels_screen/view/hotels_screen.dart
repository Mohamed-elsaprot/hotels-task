import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/core/utils/fun.dart';
import 'package:hotels_task/features/hotels_screen/manager/hotels_cubit.dart';
import 'package:hotels_task/features/hotels_screen/manager/hotels_state.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/app_bar.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/hotel_card.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BlocConsumer<HotelsCubit, HotelsState>(
              listener: (context, state) {
                if (state is HotelsFailure){
                  customSnackBar(context, state.errorMessage);
                }
              },
              builder: (context, state) {
                if (state is HotelsFailure) {
                  return Center(child: Text(state.errorMessage));
                } else if (state is HotelsSuccess) {
                  return ListView.builder(
                    padding: EdgeInsets.only(top: 50.h),
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.hotelsList.length,
                    itemBuilder: (context, index) {
                      return HotelCard(hotel: state.hotelsList[index]);
                    },
                  );
                } else {
                  return loading();
                }
              },
            ),
            const HotelsScreenAppBar(),
          ],
        ),
      ),
    );
  }
}
