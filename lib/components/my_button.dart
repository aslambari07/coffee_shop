import 'package:coffee_shop/components/bottom_bar.dart';
import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.of(context)
          .pushNamedAndRemoveUntil(BottomBar.routeName, (route) => false),
      child: Container(
        height: 62,
        decoration: BoxDecoration(
          color: kbuttonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  height: 1,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
