import 'package:flutter/material.dart';
import 'package:quiz_app/models/models.dart';

final List<Quiz> quizes = [
  Quiz(
    title: 'Technology',
    numOfQuestions: 5,
    desc:
        'These trivia questions focus on cellular phones, operating systems, the history of the computer, and social media.',
    level: Difficulty.easy,
    color: Colors.indigoAccent,
    questions: [
      Question(
        question: 'What year was the very first model of the iPhone released?',
        possibleAnswers: ['2009', '2006', '2007', '2004'],
        answer: '2007',
      ),
      Question(
        question: 'What is often seen as the smallest unit of memory?',
        possibleAnswers: ['megabyte', 'kilobyte', 'gigabyte', 'terabyte'],
        answer: 'kilobyte',
      ),
      Question(
        question: 'Who is often called the father of the computer?',
        possibleAnswers: [
          'Andrew Haunt',
          'Bill Gates',
          'Charles Babbage',
          'Steve Jobs'
        ],
        answer: 'Charles Babbage',
      ),
      Question(
        question: 'What is the name of the man who launched eBay back in 1995?',
        possibleAnswers: [
          'Pierre Omidyar',
          'Charles Babbage',
          'Steve Jobs',
          'Norman Knite'
        ],
        answer: 'Pierre Omidyar',
      ),
    ],
  ),
  Quiz(
    title: 'Science',
    numOfQuestions: 3,
    desc: 'This part focuses on the weather, planets, and elements.',
    level: Difficulty.easy,
    color: Colors.red,
    questions: [
      Question(
        question: 'Who discovered penicillin?',
        possibleAnswers: [
          'Oysters',
          'Charles Babbage',
          'Marie Curie',
          'Alexander Fleming'
        ],
        answer: 'Alexander Fleming',
      ),
      Question(
        question: 'What animals are pearls found in?',
        possibleAnswers: ['Venus', 'Neutron', 'Jupiter', 'Oysters'],
        answer: 'Oysters',
      ),
    ],
  ),
  Quiz(
      title: 'Cars & Sports',
      numOfQuestions: 4,
      desc:
          'These trivia questions are all about the automotive world including its history and modern advancements.',
      level: Difficulty.normal,
      color: Colors.amber,
      questions: [
        Question(
          question:
              'Who is often credited with creating the world’s first car?',
          possibleAnswers: [
            'Karl Benz',
            'Volkswagen',
            'Nash Motors',
            'Norman Knite'
          ],
          answer: 'Karl Benz',
        ),
        Question(
          question: 'Which animal can be seen on the Porsche logo?',
          possibleAnswers: ['Dog', 'Horse', 'Lion', 'Cow'],
          answer: 'Horse',
        ), Question(
          question: 'Which company owns Bugatti, Lamborghini. Audi, Porsche, and Ducati?',
          possibleAnswers: ['BMW', 'Stellantis', 'Benz', 'Volkswagen'],
          answer: 'Volkswagen',
        ),
      ]),
];
