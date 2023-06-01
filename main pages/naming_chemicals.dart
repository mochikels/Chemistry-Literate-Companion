// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_unnecessary_containers, prefer_final_fields

import 'package:chlic/main%20pages/pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/page_two.dart';
import 'pages/third_dot.dart';

class NamingChemicals extends StatefulWidget {
  const NamingChemicals({super.key});

  @override
  State<NamingChemicals> createState() => _NamingChemicalsState();
}

class _NamingChemicalsState extends State<NamingChemicals> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
// This is the main page for the first lesson (rules of naming compounds).
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 190, 163),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 15, 67, 29),
        ),
        title: Text(
          'RULES OF NAMING AND WRITING COMPOUNDS',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.green[900]),
        ),
      ),
      // The pageview and smooth page indicator is coded in this widget to navigate to other pages of the first lesson.
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                FirstNC(),
                NCPageTwo(),
                NCThirdDot(),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.90),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: JumpingDotEffect(
                    activeDotColor: Color.fromARGB(255, 162, 190, 163),
                    dotColor: Color.fromARGB(255, 207, 227, 215)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
