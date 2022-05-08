import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'flashcard.dart';
import 'flashcard_view.dart';




//main application code goes here//
class FlashSmart extends StatefulWidget {
  const FlashSmart({Key? key}) : super(key: key);

  @override
  State<FlashSmart> createState() => _FlashSmartState();

}


class _FlashSmartState extends State<FlashSmart> {

//the list whether it is hardcoded or implement a parse json method later//
  final List<Flashcard> _flashcardsJp = [
    Flashcard(question: "こんにちは, Konnichiwa", answer: "Hello"),
    Flashcard(question: "おはよう, Ohayou", answer: "Good Morning"),
    Flashcard(question: "お元気ですか, Ogenkidesuka", answer: "How are you doing?")
  ];

  int _currentIndex = 0;  //index for flashcards//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ('Flash Smart'),
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          body: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: FlashcardView( //flashcard functions//
                    text:_flashcardsJp[_currentIndex].question,
                  ),
                  back: FlashcardView(
                    text: _flashcardsJp[_currentIndex].answer,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: showPrevCard,
                      icon: Icon(Icons.chevron_left),
                      label: Text('Previous')),
                  OutlinedButton.icon(
                      onPressed: showNextCard,
                      icon: Icon(Icons.chevron_right),
                      label: Text('Next'))
                ],
              )
            ]),
          ),
        ));
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
      _currentIndex + 1 < _flashcardsJp.length ? _currentIndex + 1 : 0;
    });
  }

  void showPrevCard() {
    setState(() {
      _currentIndex =
      (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcardsJp.length - 1;
    });
  }

}