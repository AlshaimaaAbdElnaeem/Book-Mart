import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.3 / 0.5,
      child: Container(
        margin: EdgeInsets.all(6.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/image.webp"),
            )),
      ),
    );
  }
}
