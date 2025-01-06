import 'package:book_mart/core/utlis/size_media.dart';
import 'package:book_mart/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const BookCard(),
      ),
    );
  }
}