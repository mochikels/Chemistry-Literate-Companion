// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StructuralFormula extends StatelessWidget {
  const StructuralFormula({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextSpan(
              text: 'STRUCTURAL FORMULA',
              style: TextStyle(
                color: Color.fromARGB(255, 15, 67, 29),
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
                  ' is a graphical representation of the molecular structure showing how the atoms are possibly arranged in the real three-dimensional space.',
              style: TextStyle(
                color: Color.fromARGB(255, 15, 67, 29),
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
