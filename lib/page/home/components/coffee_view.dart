// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/data.dart';
import '../../../model/coffee_model.dart';
import '../../../style/app_style.dart';
import '../detail_page.dart';
import '../home_page.dart';

class CoffeeView extends StatefulWidget {
  final List<CoffeeModel> coffeeList;
  const CoffeeView({Key? key, required this.coffeeList}) : super(key: key);

  @override
  State<CoffeeView> createState() => _CoffeeViewState();
}

class _CoffeeViewState extends State<CoffeeView> {
  var selected = 0;

  Widget buildCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ["Cappuccino", "Machiato", "Latte", "Americano"]
            .asMap()
            .entries
            .map(
              (entry) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = entry.key;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30, bottom: 20.r),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.r,
                    vertical: 10.r,
                  ),
                  decoration: BoxDecoration(
                    color: selected == entry.key ? kbuttonColor : kWhiteColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    entry.value,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              selected == entry.key ? kWhiteColor : kTexColor,
                        ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget singleCoffee(CoffeeModel coffee) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topRight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(coffee.image),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 51,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2.5),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          coffee.rate.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      coffee.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      coffee.coffeeWith,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Color(0xff9B9B9B)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${coffee.price.toString()}",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                DetailPage.routeName,
                                arguments: coffee,
                              );
                            },
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: kbuttonColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(11),
                              child: Icon(
                                Icons.add,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: promoHeight / 2 + 20),
      child: Column(
        children: [
          buildCategories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: coffeeList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.4.h,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    CoffeeModel coffee = coffeeList[index];
                    return singleCoffee(coffee);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
