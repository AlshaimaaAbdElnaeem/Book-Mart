import 'package:book_mart/core/routers/constant_router.dart';
import 'package:book_mart/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsApp.logoImage, height: 50.h),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(searchView);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18.sp,
              ))
        ],
      ),
    );
  }
}
