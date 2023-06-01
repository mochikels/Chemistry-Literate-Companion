// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'intro_pages/chem_formula.dart';
import 'intro_pages/chem_name.dart';
import 'intro_pages/struc_form.dart';

class FirstNC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Center(
                  child: Text(
                    'Chemical Formula, Chemical Name and Structural Formula',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.green[900]),
                  ),
                ),
              ),
              // Lesson Texts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: 550,
                    color: Color.fromARGB(255, 162, 190, 163),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        ChemicalFormula(),
                        ChemicalNames(),
                        StructuralFormula(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
