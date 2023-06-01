// ignore_for_file: prefer_final_fields

import 'package:chlic/games/topic%202%20true%20or%20false/quesmodeltwo.dart';

class QuizLogicc {
  int _questionNumber = 0;

  List<Questionnnn> _questions = [
    Questionnnn(
        'Reactants are the starting materials in a chemical reaction.', true),
    Questionnnn(
        ' Product is the substance formed because of a chemical reaction. ',
        true),
    Questionnnn(
        'In a chemical equation, reactants are usually written on the right side and products on the left side.',
        false),
    Questionnnn(
        'In writing and balancing the chemical equations, important symbols must be remembered.',
        true),
    Questionnnn(
        'Diatomic molecules are molecules composed of only two atoms of the same elements.',
        true),
    Questionnnn(
        'A Chemical Formula describes a chemical change using the names of the reactants and products.',
        false),
    Questionnnn(
        'Chemical Equation is the number of atoms of the element present in the substance. ',
        false),
    Questionnnn(
        'The chemical equation represents facts, which are the reactants and the products.',
        true),
    Questionnnn(
        'The reactants and the products should be properly represented using chemical symbols and chemical formulas.',
        true),
    Questionnnn(
        'You must not attempt to balance the equation by changing the subscripts in the chemical formula of a substance.',
        true),
    Questionnnn(
        'The numbers in front of the formulas are called subscripts.', false),
    Questionnnn(
        'Coefficients can be multiplied to the subscripts to determine the number of atoms.',
        true),
    Questionnnn(
        'The reactants and products always have an arrow between them that represents “to yield,”',
        true),
    Questionnnn(
        'Reactants are the substance that changes when it is combined with another substance in a chemical reaction.',
        true),
    Questionnnn(
        'The number of atoms for each element should not be equal in the reactant’s side and the product’s side of the equation.',
        false),
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
}
