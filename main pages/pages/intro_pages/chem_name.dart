// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChemicalNames extends StatelessWidget {
  const ChemicalNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'CHEMICAL NAME',
              style: TextStyle(
                color: Color.fromARGB(255, 15, 67, 29),
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
                  ' is the scientific name given to a chemical in accordance with the nomenclature system developed by the International Union of Pure and Applied Chemistry. ',
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
