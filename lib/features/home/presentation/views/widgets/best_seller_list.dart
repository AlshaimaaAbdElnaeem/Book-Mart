import 'package:book_mart/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: const BestSellerItem(),
          );
        });
  }
}
