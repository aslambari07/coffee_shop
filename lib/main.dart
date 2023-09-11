import 'package:coffee_shop/components/bottom_bar.dart';
import 'package:coffee_shop/page/home/detail_page.dart';
import 'package:coffee_shop/page/home/home_page.dart';
import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/coffee_model.dart';
import 'onboarding/onboarding_bar.dart';
import 'page/home/favorite_page.dart';
import 'page/home/notif-page.dart';
import 'page/home/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Coffee Shop',
          theme: theme,
          routes: {
            '/': (context) => const Onboarding(),
            HomePage.routeName: (context) => const HomePage(),
            BottomBar.routeName: (context) => const BottomBar(),
            DetailPage.routeName: (context) {
              final coffeeModel =
                  ModalRoute.of(context)?.settings.arguments as CoffeeModel?;
              if (coffeeModel == null) {
                throw ArgumentError("Missing CoffeeModel argument");
              }
              return DetailPage(coffeeModel: coffeeModel);
            },
            OrderPage.routeName: (context) => const OrderPage(),
            FavoritePage.routeName: (context) => const FavoritePage(),
            NotifPage.routeName: (context) => const NotifPage(),
          },
        );
      },
    );
  }
}
