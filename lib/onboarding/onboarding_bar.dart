// ignore_for_file: unused_field

import 'package:coffee_shop/components/my_button.dart';
import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);
    _scaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              '../assets/images/image3.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: Column(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _opacityAnimation.value,
                    child: Text(
                      'Coffee so good, your taste buds will love it.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _opacityAnimation.value,
                    child: Text(
                      'Coffee so good, your taste buds will love it.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            height: 1.54,
                            letterSpacing: 0.01,
                            color: const Color(0xffA9A9A9),
                          ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _opacityAnimation.value,
                    child: Transform.scale(
                      scale: _scaleAnimation.value,
                      child: const MyButton(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
