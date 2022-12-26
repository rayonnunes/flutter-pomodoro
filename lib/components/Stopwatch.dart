import 'package:flutter/material.dart';
import 'package:pomodoro/components/StopwatchButton.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Work Time!',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: StopwatchButton(
                  title: 'Start',
                  icon: Icons.play_arrow,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: StopwatchButton(
                  title: 'Stop',
                  icon: Icons.pause,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: StopwatchButton(
                  title: 'Restart',
                  icon: Icons.refresh,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}