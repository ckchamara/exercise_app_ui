import 'package:exercise_app_ui/screens/details_screen.dart';
import 'package:exercise_app_ui/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';
import 'widgets/catagory_card.dart';

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
      bottomNavigationBar: SafeArea(
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
      ),
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
                    children: [
                      CategoryCard(
                        title: "Diet Recommendation",
                        SvgSrc: "assets/icons/Hamburger.svg",
                        onTap: () {},
                      ),
                      CategoryCard(
                          title: "Mindfulness Recommendation",
                          SvgSrc: "assets/icons/Meditation.svg",
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailsScreen();
                            }));
                          }),
                      CategoryCard(
                          title: "Exercises Recommendation",
                          SvgSrc: "assets/icons/Excrecises.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recommendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recommendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
                      CategoryCard(
                          title: "Yoga Recomendation",
                          SvgSrc: "assets/icons/yoga.svg",
                          onTap: () {}),
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
