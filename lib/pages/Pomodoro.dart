import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/components/TimeEntry.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Stopwatch()
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeEntry(
                    title: 'Work',
                    value: store.workTime,
                    inc: store.canModifyWorkTime ? store.increaseWorkTime : null,
                    dec: store.canModifyWorkTime ? store.decreaseWorkTime : null,
                  ),
                  TimeEntry(
                    title: 'Rest',
                    value: store.restTime,
                    inc: store.canModifyRestTime ? store.increaseRestTime : null,
                    dec: store.canModifyRestTime ? store.decreaseRestTime : null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}