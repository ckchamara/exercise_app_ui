

import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              asset: 'assets/icons/calendar.svg',
              text: 'Today',
              onTap: () {},
              isActive: true,
            ),
            BottomNavItem(
              asset: 'assets/icons/gym.svg',
              text: 'Today',
              onTap: () {},
            ),
            BottomNavItem(
              asset: 'assets/icons/Settings.svg',
              text: 'Settings',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
