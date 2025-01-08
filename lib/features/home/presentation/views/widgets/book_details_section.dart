import 'package:book_mart/core/utlis/size_media.dart';
import 'package:book_mart/core/utlis/styles.dart';
import 'package:book_mart/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_card.dart';
import 'custom_ratting_book.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * .27),
          child: const BookCard(),
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        const CustomRattingBook(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 30.h,
        ),
        const BooksAction(),
      ],
    );
  }
}
