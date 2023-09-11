import 'package:coffee_shop/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/coffee_view.dart';
import 'components/location_and_search.dart';
import 'components/promo.dart';

double containerHeight = 220.h;
double promoHeight = 120.h;

class HomePage extends StatelessWidget {
  static const String routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: containerHeight,
            left: 0,
            right: 0,
            child: const LocationAndSearch(),
          ),
          Positioned.fill(
            top: containerHeight,
            child: CoffeeView(coffeeList: coffeeList),
          ),
          Positioned(
            top: containerHeight - promoHeight / 2,
            left: 0,
            right: 0,
            child: const Promo(),
          ),
        ],
      ),
    );
  }
}
