// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'third_text.dart';

class NCSecondText extends StatelessWidget {
  const NCSecondText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: RichText(
              textAlign: TextAlign.justify,
              // ignore: prefer_const_constructors
              text: TextSpan(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  TextSpan(
                    text: 'Example: ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 15, 67, 29),
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text:
                        'Sodium chloride made up of metal sodium and nonmetal chlorine.',
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
          //image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset('lib/png/first_example.png'),
          ),

          //explanation
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            child: Text(
              'The covalent compound is formed between two or more nonmetal atoms, and the type of intramolecular bond that exists between atoms is covalent bond.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  color: Color.fromARGB(255, 15, 67, 29)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              height: 30,
              thickness: 8,
              color: Colors.green[200],
            ),
          ),
          NCThirdText(),
          const SizedBox(
            height: 75,
          )
        ],
      ),
    );
  }
}
