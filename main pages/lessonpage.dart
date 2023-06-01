// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:chlic/main%20pages/naming_chemicals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'balancingchem/balancing.dart';
import 'pages/first.dart';
import 'pages/second.dart';
import 'pages/third.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});
// Main Lessonpage (in BottomNavBar)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 255, 252),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'LESSONS',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(_createRoute());
                  }),
                  child: FirstOverview()),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(_createSecondRoute());
                  }),
                  child: SecondOverview()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const NamingChemicals(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createSecondRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const BalancingChemicals(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
