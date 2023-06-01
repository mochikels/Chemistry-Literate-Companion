// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:chlic/main%20pages/pages/about%20info/ayi.dart';
import 'package:chlic/main%20pages/pages/about%20info/bea.dart';
import 'package:chlic/main%20pages/pages/about%20info/gleiand.dart';
import 'package:chlic/main%20pages/pages/about%20info/jean.dart';
import 'package:chlic/main%20pages/pages/about%20info/ter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
// Application Logo and description
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.white,
                      child: Image.asset(
                        'lib/png/chliclogo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About ChLiC',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.08,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 15, 67, 29)),
                        ),
                        Text(
                          'by Team ChLiC',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                          text:
                              'Chemistry Literate Companion (ChLiC): Application for Interactive Learning in Chemistry',
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 67, 29),
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                          text:
                              'A learning application platform that has been developed to assist the students as well as teachers in the process of learning and teaching General Chemistry 1, especially the least-learned competencies. These Senior High School Students from Luis Palad Integrated High School have developed this application as an output for the Research Project that they are currently working on.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 67, 29),
                            fontSize: MediaQuery.of(context).size.width * 0.025,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
                SizedBox(
                  height: 10,
                ),
                // Developers of ChLiC / Researchers
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Developers & Creators',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Color.fromARGB(255, 15, 67, 29),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 15, 67, 29),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Meet the Team',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // Lead Developer About
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 235,
                      width: 550,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 15, 67, 29),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            JeanAbout(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                  // Game Developer About
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 240,
                      width: 550,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 15, 67, 29),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            AyiAbout(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                // Lead Proponent About
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 235,
                      width: 550,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 15, 67, 29),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            BeaAbout(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                // Secretary About
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 235,
                      width: 550,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 15, 67, 29),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            GleiandAbout(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                // Creative Director About
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 235,
                      width: 550,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 15, 67, 29),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            TerAbout(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 15, 67, 29),
                ),
                SizedBox(
                  height: 10,
                ),
                // REFERENCE OF LESSON
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Reference',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Color.fromARGB(255, 15, 67, 29),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Padolina, M. D., Antero, E. S., Alumaga, M. B. & Estanilla, L. C. (2010). Conceptual and Functional Chemistry: Modular Approach. Vibal Publishing House Inc.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.width * 0.02,
                      color: Color.fromARGB(255, 15, 67, 29),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
