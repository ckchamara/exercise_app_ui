import 'package:exercise_app_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                  color: kBlueColor,
                  image: DecorationImage(
                      image: AssetImage('assets/images/meditation_bg.png'),
                      fit: BoxFit.fitWidth))),
          SafeArea(
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
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                            'Live happier and helthier by learning fundametals of meditation'),
                      )),
                  SizedBox(width: size.width * .5, child: const SearchBar()),
                  Wrap(
                    children: [
                      SessionCard(size: size),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snapshot) {
      return Container(
        width: snapshot.maxWidth / 2 - 10,
        margin: EdgeInsets.only(top: size.height / 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor)
            ]),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 43,
              decoration: const BoxDecoration(
                color: kBlueColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Session 01',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      );
    });
  }
}
