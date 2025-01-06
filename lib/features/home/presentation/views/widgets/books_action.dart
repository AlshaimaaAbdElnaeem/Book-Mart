import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.sp),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroungColor: Colors.white,
              textColor: Colors.black,
              text: '99.9\$',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.sp),
                bottomLeft: Radius.circular(16.sp),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              padding: 11.sp,
              fontSize: 16,
              backgroungColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.sp),
                bottomRight: Radius.circular(16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
