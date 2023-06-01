// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class GameSecondTabOverview extends StatelessWidget {
  const GameSecondTabOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              border:
                  Border.all(width: 5, color: Color.fromARGB(255, 15, 67, 29)),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 162, 190, 163),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'lib/png/trueorfalsetab.png',
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
