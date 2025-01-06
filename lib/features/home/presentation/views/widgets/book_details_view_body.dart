import 'package:book_mart/core/utlis/size_media.dart';
import 'package:book_mart/core/utlis/styles.dart';
import 'package:book_mart/core/widgets/custom_button.dart';
import 'package:book_mart/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_ratting_book.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
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
        const BooksAction()
      ],
    );
  }
}

