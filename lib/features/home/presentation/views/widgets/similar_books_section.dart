import 'package:book_mart/core/utlis/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utlis/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.similarTitle,
            textAlign: TextAlign.start,
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
