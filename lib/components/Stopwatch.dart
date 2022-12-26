import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/StopwatchButton.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    
    return Observer(
      builder: (_) => Container(
        color: store.isWorking ? Colors.red : Colors.green, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking ? 'Work Time!' : 'Rest Time!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              store.stopwatchTime,
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
                if (!store.started)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: StopwatchButton(
                      title: 'Start',
                      icon: Icons.play_arrow,
                      onClick: store.start,
                    ),
                  ),
                if (store.started)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: StopwatchButton(
                    title: 'Stop',
                    icon: Icons.pause,
                    onClick: store.stop,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: StopwatchButton(
                    title: 'Restart',
                    icon: Icons.refresh,
                    onClick: store.refresh,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}