// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

import '../gamepage/firstgame.dart';
import '../gamepage/secondgame.dart';
import '../homepage lesson/firstboxlesson.dart';
import '../homepage lesson/secondboxlesson.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment(0, 0),
              height: 250,
              width: 600,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Stack(
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 162, 190, 163)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: 240,
                              width: 570,
                              // ignore: sort_child_properties_last
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Carousel(
                                  images: [
                                    AssetImage('lib/png/banner1.png'),
                                    AssetImage('lib/png/banner2.png'),
                                  ],
                                  dotBgColor: Colors.transparent,
                                  dotSize: 5,
                                  dotSpacing: 20,
                                  autoplayDuration: Duration(seconds: 5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
              child: Container(
                height: 25,
                // ignore: sort_child_properties_last
                child: Row(
                  children: [
                    Icon(Icons.book_rounded, size: 28),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'LESSONS',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        FirstBox(),
                        SecondBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // second na itech
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Container(
                height: 25,
                // ignore: sort_child_properties_last
                child: Row(
                  children: [
                    Icon(Icons.gamepad_rounded, size: 28),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'GAMES',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      FirstGame(),
                      SecondGame(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
