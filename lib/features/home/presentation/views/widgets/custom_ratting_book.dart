import 'package:book_mart/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRattingBook extends StatelessWidget {
  const CustomRattingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 15.sp,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        Text(
          " (250)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
