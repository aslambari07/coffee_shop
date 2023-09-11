import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_page.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      height: promoHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('../assets/images/image81.png'),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            bottom: 3.r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffED5151),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Promo",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: kWhiteColor),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Buy on get",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(backgroundColor: kBlackColor),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "one FREE",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(backgroundColor: kBlackColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
