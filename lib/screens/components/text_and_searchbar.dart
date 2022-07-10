
import 'package:flutter/material.dart';

import '../../widgets/search_bar.dart';

class TextAndSearchBar extends StatelessWidget {
  const TextAndSearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .05,
            ),
            Text(
              'Meditation',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "3-10 Min Course",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
                width: size.width * .6,
                child: const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                      'Live happier and helthier by learning fundametals of meditation'),
                )),
            SizedBox(width: size.width * .5, child: const SearchBar())
          ],
        ),
      ),
    );
  }
}
