import 'package:flutter/material.dart';
import 'package:quiz_app/models/models.dart';
import 'package:quiz_app/presentation/detail/detail_page.dart';
import 'package:quiz_app/presentation/mock/mock_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: quizes.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8.0),
            child: ListTile(
              title: Text(quizes[index].title),
              subtitle: Text(quizes[index].desc),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              minVerticalPadding: 20,
              tileColor: quizes[index].color.withOpacity(0.4),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Questions: ${quizes[index].numOfQuestions}',
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Difficulty: ${quizes[index].level.toShortString()}',
                  )
                ],
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(quiz: quizes[index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
