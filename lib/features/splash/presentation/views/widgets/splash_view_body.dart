import 'package:book_mart/core/routers/constant_router.dart';
import 'package:book_mart/core/utlis/assets.dart';
import 'package:book_mart/features/splash/presentation/views/widgets/text_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animation();
    delayedMethod();
  }

  @override
  void dispose() {
    
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetsApp.logoImage,
            height: 100.h,
          ),
          TextSlidingAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void animation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
   void delayedMethod() {
     Future.delayed(const Duration(seconds: 2), () {
      context.go(homeView);
    });
  }
}

