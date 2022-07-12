
import 'package:flutter/material.dart';

import '../../constants.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.size,
    required this.sessionNum,
    this.isDone = false,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final int sessionNum;
  final bool isDone;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, snapshot) {
      return Container(
        width: snapshot.maxWidth / 2 - 10,
        margin: EdgeInsets.only(top: size.height / 30),
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Session $sessionNum',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
