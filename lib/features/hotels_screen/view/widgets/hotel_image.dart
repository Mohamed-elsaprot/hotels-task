import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';


class HotelImage extends StatelessWidget {
  const HotelImage({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.r),
          topLeft: Radius.circular(12.r)),
      child: CachedNetworkImage(
        imageUrl: imagePath,
        fit: BoxFit.fill,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline,),
            Text(
              'No Image Found.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
