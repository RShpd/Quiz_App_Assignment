import 'package:flutter/cupertino.dart';
import 'package:quiz_app/models/question.dart';

enum Difficulty { easy, normal, hard }

class Quiz {
  final String title;
  final int numOfQuestions;
  final String desc;
  final Difficulty level;
  final Color color;
  final List<Question> questions;

  Quiz({
    required this.title,
    required this.numOfQuestions,
    required this.desc,
    required this.level,
    required this.color,
    required this.questions,
  });
}

extension ParseToString on Difficulty {
  String toShortString() {
    return toString().split('.').last;
  }
}
