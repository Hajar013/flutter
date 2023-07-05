import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confetti/confetti.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int? res;
  double val = 0.0;
  bool isCelebrating = false;
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 5));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Game"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Guess the Value to celebrate'),
            Slider(
              min: 0,
              max: 100,
              divisions: 20,
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                  if (val == 80 && !isCelebrating) {
                    // Start celebrating when val > 50
                    isCelebrating = true;
                    _confettiController.play();
                  } else if (val != 80 && isCelebrating) {
                    // Stop celebrating when val <= 50
                    isCelebrating = false;
                    _confettiController.stop();
                  }
                });
              },
            ),
            Text(
              "Slider Value: ${val.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 16),
            ),
            Visibility(
              visible: val == 80,
              child: Column(
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText(
                        'Yeeees',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 25, 58, 223),
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  ConfettiWidget(
                    confettiController: _confettiController,
                    blastDirectionality: BlastDirectionality.explosive,
                    emissionFrequency: 0.05,
                    numberOfParticles: 20,
                    colors: const [
                      Colors.red,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: val != 80,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ScaleAnimatedText(
                    'Nooooo',
                    textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}