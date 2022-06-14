import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: MyWavyText()));
}

class MyWavyText extends StatefulWidget {
  const MyWavyText({Key? key}) : super(key: key);

  @override
  State<MyWavyText> createState() => _MyWavyTextState();
}

class _MyWavyTextState extends State<MyWavyText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: DefaultTextStyle(
                style: const TextStyle(fontSize: 30),
                child: AnimatedTextKit(animatedTexts: [
                  WavyAnimatedText(
                    'Hello World',
                  ),
                  WavyAnimatedText('Look at the Waves.'),
                ]))));
  }
}
