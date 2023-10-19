import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  StartScreen({super.key, required this.onStart});

  final void Function() onStart;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset('images/quiz-logo.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Learn Flutter the fun way'),
          OutlinedButton.icon(
            onPressed: onStart,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text("Start quiz"),
          )
        ],
      ),
    );
  }

}