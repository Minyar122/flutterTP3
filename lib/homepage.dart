import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _score = 0; // Variable to store the score
  int _questionIndex = 0; // Track which question is currently being displayed

  // List of questions with answer options and corresponding score values
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Pink', 'score': 5},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favorite season?',
      'answers': [
        {'text': 'Summer', 'score': 10},
        {'text': 'Winter', 'score': 5},
        {'text': 'Spring', 'score': 7},
        {'text': 'Fall', 'score': 6},
      ],
    },
  ];

  // Function to handle when an answer is selected
  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print('Next question');
    } else {
      print('No more questions. Your final score is $_score.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        actions: [
          IconButton(
            onPressed: () {
              print("search button pressed!");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("arrow back button pressed!");
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ],
      ),
      body: _questionIndex < _questions.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _questions[_questionIndex]['questionText'] as String,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ...(_questions[_questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return ElevatedButton(
                    onPressed: () => _answerQuestion(answer['score'] as int),
                    child: Text(answer['text'] as String),
                  );
                }).toList(),
              ],
            )
          : Center(
              child: Text(
                'score is $_score.',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
