// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChemicalFormula extends StatelessWidget {
  const ChemicalFormula({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                  text: 'CHEMICAL FORMULA',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      ' as a symbolic expression of a compound or substance. It is also defined as shorthand for expressing the types and the number of atoms in a substance.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 67, 29),
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
