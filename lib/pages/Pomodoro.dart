import 'package:flutter/material.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/components/TimeEntry.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch()
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeEntry(title: 'Work', value: 25),
                TimeEntry(title: 'Rest', value: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}