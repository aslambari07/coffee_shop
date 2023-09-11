import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationAndSearch extends StatelessWidget {
  const LocationAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 1],
          colors: gradientColors,
          transform: const GradientRotation(230.86),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.r),
            title: Text(
              "Location",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: const Color(0xffB7b7B7),
                  ),
            ),
            subtitle: Text(
              "Bilzen Tanjungbalai",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: kWhiteColor,
                  ),
            ),
            trailing: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(profile),
                ),
              ),
            ),
          ),
          //search
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
            child: TextField(
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: "Search Coffee",
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 14,
                      height: 1,
                      color: const Color(0xff989898),
                    ),
                fillColor: const Color(0xff313131),
                filled: true,
                prefixIcon: CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Image.asset('../assets/icons/search.png'),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(6),
                  child: CupertinoButton(
                    onPressed: () {},
                    color: kbuttonColor,
                    padding: EdgeInsets.zero,
                    child: Image.asset('../assets/icons/furnitur-icon.png'),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
