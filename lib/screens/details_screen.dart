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
              decoration: BoxDecoration(
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
                  SizedBox(height: size.height *.05,),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 10,),
                  Text("3-10 Min Course", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Live happier and helthier by learning fundametals of meditation')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
