import 'package:flutter/material.dart';
import 'package:quiz_app/models/models.dart';

class DetailPage extends StatelessWidget {
  final Quiz quiz;

  const DetailPage({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(quiz.title),
        backgroundColor: quiz.color,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined))
        ],
      ),
      // backgroundColor: quiz.color,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Please select the correct answers and at the enf hit the submit button.',
                      textScaleFactor: 1.2,
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                      ),
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: quiz.questions.length,
                      itemBuilder: (context, index) {
                        final Question q = quiz.questions[index];
                        return RadioListTileWidget(
                          question: q,
                          color: quiz.color,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioListTileWidget extends StatefulWidget {
  final Color color;
  final Question question;

  const RadioListTileWidget(
      {Key? key, required this.color, required this.question})
      : super(key: key);

  @override
  _RadioListTileWidgetState createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        color: widget.color.withOpacity(0.4),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  widget.question.question,
                  textScaleFactor: 1.3,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              RadioListTile(
                title: Text(widget.question.possibleAnswers[1]),
                contentPadding: EdgeInsets.zero,
                value: widget.question.possibleAnswers[1],
                groupValue: '',
                onChanged: (option) {},
              ),
              RadioListTile(
                title: Text(widget.question.possibleAnswers[2]),
                value: widget.question.possibleAnswers[2],
                contentPadding: EdgeInsets.zero,
                groupValue: '',
                onChanged: (option) {},
              ),
              RadioListTile(
                title: Text(widget.question.possibleAnswers[3]),
                value: widget.question.possibleAnswers[3],
                contentPadding: EdgeInsets.zero,
                groupValue: '',
                onChanged: (option) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
