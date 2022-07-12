import 'package:exercise_app_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../widgets/bottom_navbar.dart';
import 'components/session_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavbar() ,
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
              child: SingleChildScrollView(
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
                      spacing: 15,
                      runSpacing: -10,
                      children: [
                        SessionCard(
                          onTap: () {},
                          isDone: true,
                          size: size,
                          sessionNum: 02,
                        ),
                        SessionCard(
                          onTap: () {},
                          size: size,
                          sessionNum: 01,
                        ),
                        SessionCard(
                          onTap: () {},
                          size: size,
                          sessionNum: 01,
                        ),
                        SessionCard(
                          onTap: () {},
                          size: size,
                          sessionNum: 01,
                        ),
                        SessionCard(
                          onTap: () {},
                          size: size,
                          sessionNum: 01,
                        ),
                        SessionCard(
                          onTap: () {},
                          size: size,
                          sessionNum: 01,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .025,
                    ),
                    Text('Meditation',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    Container(
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13)
                          ]),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Basic 2',
                                  style: Theme.of(context).textTheme.subtitle1),
                              Text('Statrt your practice')
                            ],
                          )),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
