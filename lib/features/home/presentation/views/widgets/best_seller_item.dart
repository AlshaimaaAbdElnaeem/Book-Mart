import 'package:book_mart/core/routers/constant_router.dart';
import 'package:book_mart/core/utlis/size_media.dart';
import 'package:book_mart/core/utlis/styles.dart';
import 'package:book_mart/features/home/presentation/views/widgets/book_card.dart';
import 'package:book_mart/features/home/presentation/views/widgets/custom_ratting_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(bookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height / 6,
            child: const BookCard(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.width * 0.5,
                  child: Text(
                    "Harry Potter and the Goblet Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  "J.K Rowling",
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 3.sp,
                ),
                SizedBox(
                  width: 190.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "99.9 \$",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CustomRattingBook()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
