
import 'package:flutter/material.dart';

import '../../constants.dart';

class TopBackgroundAndImg extends StatelessWidget {
  const TopBackgroundAndImg({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * .45,
        decoration: const BoxDecoration(
            color: kBlueColor,
            image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth)));
  }
}
