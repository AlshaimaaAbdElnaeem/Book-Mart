import 'package:book_mart/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_mart/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const BooksDetailsSection(),
              SizedBox(
                height: 30.h,
              ),
              const SimilarBooksSection()
            ],
          ),
        )
      ],
    );
  }
}
