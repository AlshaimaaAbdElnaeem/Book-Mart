import 'package:book_mart/core/utlis/app_strings.dart';
import 'package:book_mart/core/utlis/styles.dart';
import 'package:book_mart/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:book_mart/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_mart/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: const CustomAppBar(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const FeaturedBooksListView(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0.sp),
                  child: Text(
                    AppStrings.titleHomePage,
                    style: Styles.textStyle18,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0.sp),
            sliver: const BestSellerList(),
          ),
        ],
      ),
    );
  }
}
