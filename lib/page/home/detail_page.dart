// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/coffee_model.dart';
import 'order_page.dart';

class DetailMenu extends StatefulWidget {
  final bool isFavorite;
  final VoidCallback onFavoritePressed;
  final CoffeeModel coffeeModel;

  const DetailMenu({
    Key? key,
    required this.isFavorite,
    required this.onFavoritePressed,
    required this.coffeeModel,
  }) : super(key: key);

  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  String selectedSize = 'S';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: widget.isFavorite ? Colors.red : null,
                  ),
                  onPressed: widget.onFavoritePressed,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset(
                      widget.coffeeModel.image,
                      width: 315,
                      height: 226,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              widget.coffeeModel.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.coffeeModel.coffeeWith,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Color(0xff9B9B9B)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  widget.coffeeModel.rate.toString(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: kBlackColor,
                        fontSize: 16,
                      ),
                ),
                Text(
                  '(230)',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                  ),
                ),
                SizedBox(width: 190),
                Icon(Icons.bookmark_outlined, color: kbuttonColor),
                SizedBox(width: 5),
                Icon(Icons.share, color: kbuttonColor),
              ],
            ),
            SizedBox(height: 31),
            Container(
              width: 315,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 315,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                          style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                            height: 1.64,
                          ),
                        ),
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            color: Color(0xFFC67C4E),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                            height: 1.64,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  'Size',
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 13),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSizeButton('S', context),
                buildSizeButton('M', context),
                buildSizeButton('L', context),
              ],
            ),
            SizedBox(height: 14),
            // ... sisipkan konten lain di sini
          ],
        ),
      ),
    );
  }

  Widget buildSizeButton(String size, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 96,
        height: 43,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: selectedSize == size ? kbuttonColor : kWhiteColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.0, color: kWhiteColor),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize == size ? kWhiteColor : kBlackColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class NavDetail extends StatelessWidget {
  final String price;
  final String image;
  final String name;

  const NavDetail({
    Key? key,
    required this.price,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
      child: Container(
        width: 375,
        height: 110,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF9F9F9),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 39,
              top: 23,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xFF9B9B9B),
                      fontSize: 14,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$ $price',
                    style: TextStyle(
                      color: kbuttonColor,
                      fontSize: 18,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 30,
              top: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    OrderPage.routeName,
                    arguments: {
                      'image': image,
                      'name': name,
                    },
                  );
                },
                child: Container(
                  width: 217,
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: kbuttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 16,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  static const String routeName = '/detail-page';

  final CoffeeModel coffeeModel;

  const DetailPage({Key? key, required this.coffeeModel}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned(
              height: 560.h,
              left: 0,
              right: 0,
              child: DetailMenu(
                isFavorite: _isFavorite,
                onFavoritePressed: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                coffeeModel: widget.coffeeModel,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 110,
              child: NavDetail(
                price: '4.53',
                image: widget.coffeeModel.image,
                name: widget.coffeeModel.name,
              ),
            )
          ],
        ),
      );
    });
  }
}
