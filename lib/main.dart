import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/undraw_pilates_gpdb.png")),
              )),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),
                Text("Good Morning \nMalcolm..!",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 36)),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: const [
                      CategoryCard(
                          title: "Diat Recomendation",
                          SvgSrc: "assets/icons/Hamburger.svg"),
                      CategoryCard(
                          title: "Mindfullness Recomendation",
                          SvgSrc: "assets/icons/Meditation.svg"),
                      CategoryCard(
                        title: "Excrecises Recomendation",
                        SvgSrc: "assets/icons/Excrecises.svg",
                      ),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg"),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.SvgSrc,
    required this.title,
  }) : super(key: key);

  final String SvgSrc, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -15,
                color: kShadowColor)
          ]),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(SvgSrc),
          const Spacer(),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 15))
        ],
      ),
    );
  }
}
