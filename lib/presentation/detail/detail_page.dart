import 'package:flutter/material.dart';
import 'package:quiz_app/models/models.dart';

class DetailPage extends StatelessWidget {
  final Quiz quiz;
  const DetailPage({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 2,
            color: quiz.color.withOpacity(0.4),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(quiz.title, style: Theme.of(context).textTheme.headline6,)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
