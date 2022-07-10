import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavItem extends StatelessWidget {
  BottomNavItem({
    Key? key,
    required this.text,
    required this.asset,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final String text, asset;
  final void Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(asset),
          Text(
            text,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
