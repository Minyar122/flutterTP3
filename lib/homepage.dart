import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _score = 0;
  int _questionIndex = 0;

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
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Sushi', 'score': 7},
        {'text': 'Pasta', 'score': 6},
        {'text': 'Salad', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favorite hobby?',
      'answers': [
        {'text': 'Reading', 'score': 10},
        {'text': 'Traveling', 'score': 7},
        {'text': 'Gaming', 'score': 6},
        {'text': 'Cooking', 'score': 5},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    int totalScore = 0;
    for (var question in _questions) {
      for (var answer in question['answers'] as List<Map<String, Object>>) {
        totalScore += answer['score'] as int;
      }
    }

    
    double percentage = (_score / totalScore) * 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: const Color.fromARGB(255, 237, 245, 241),
        actions: [
          IconButton(
            onPressed: () {
              print("Search button pressed!");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Back button pressed!");
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _questionIndex < _questions.length
                ? Column(
                    children: [
                      Text(
                        _questions[_questionIndex]['questionText'] as String,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      ...(_questions[_questionIndex]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 20),
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 191, 166),
                            ),
                            onPressed: () =>
                                _answerQuestion(answer['score'] as int),
                            child: Text(
                              answer['text'] as String,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  )
                : Center(
                    child: Column(
                      children: [
                        const Text('Quiz Completed!',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 20),
                        Text('Your final score is $_score out of $totalScore.',
                            style: const TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Text(
                            'Your score percentage is ${percentage.toStringAsFixed(2)}%.',
                            style: const TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 30),
                        Image.asset(
                            'assets/img/Score.png'),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
