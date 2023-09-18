import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteCardState createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  String selectedValue = "1";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: const Row(
        children: [
          // Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Favorite",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
    );
  }
}

class FavoriteNav extends StatelessWidget {
  const FavoriteNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        Stack(
          children: [
            Container(
              height: 700,
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    color: Colors.white,
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class FavoriteNavBar extends StatelessWidget {
  const FavoriteNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 690),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  color: Color(0xFFC67C4E),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$100",
                style: TextStyle(
                  color: Color(0xFFC67C4E),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            padding: const EdgeInsets.all(13),
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFC67C4E),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Check Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 246, 246),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class FavoriteMenu extends StatelessWidget {
  const FavoriteMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        for (int i = 1; i < 4; i++)
          Container(
            height: 110,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: const Color(0xFFC67C4E),
                  onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 15),
                  child: Image.asset("assets/images/Rectangle 1706.png"),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Title",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC67C4E),
                        ),
                      ),
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC67C4E),
                        ),
                      )
                    ],
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.delete,
                        color: Colors.blue,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text(
                              "01",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 153, 116, 5),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

class FavoritePage extends StatelessWidget {
  static const String routeName = '/favorite-page';
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: 60.h,
            left: 0,
            right: 0,
            child: const FavoriteCard(),
          ),
          Positioned(
            height: 800.h,
            left: 0,
            right: 0,
            child: const FavoriteNav(),
          ),
          Positioned(
            height: 800.h,
            left: 0,
            right: 0,
            child: const FavoriteNavBar(),
          ),
          Positioned(
            height: 800.h,
            left: 0,
            right: 0,
            child: const FavoriteMenu(),
          ),
        ],
      ),
    );
  }
}
