import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels_task/features/hotels_screen/data/models/Hotel.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/deal_container.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/hotel_image.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/more_prices_button.dart';
import 'package:hotels_task/features/hotels_screen/view/widgets/rating_location_column.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({Key? key, required this.hotel}) : super(key: key);
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 10,
                color: Colors.black26,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
                width: double.infinity,
                child: HotelImage(imagePath:hotel.image!),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                child: RatingLocationColumn(
                    rating: hotel.starts?.toDouble()?? 0,
                    reviewScore: hotel.starts?.toDouble()?? 0,
                    address: hotel.address??'Not Found',
                    review: hotel.review??'Not Found',
                    name: hotel.name??'Not Found',
                ),
              ),
              DealContainer(hotel: hotel),
              const MorePricesButton()
            ],
          ),
        ),
        Positioned(
          right: 40.w,
          top: 30.h,
          child: CircleAvatar(
            radius: 25.sp,
            backgroundColor: Colors.black54,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 30.sp,)),
          ),
        )
      ],
    );
  }
}
