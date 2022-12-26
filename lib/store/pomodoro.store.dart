import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType {
  work,
  rest,
}

abstract class _PomodoroStore with Store {
  /// Time handler of stopwatch (in seconds)
  @observable
  int mainTime = 25 * 60;

  /// Work time (in minutes)
  @observable
  int workTime = 25;

  /// Rest time (in minutes)
  @observable
  int restTime = 5;

  @observable
  bool started = false;

  @observable
  IntervalType intervalType = IntervalType.work;

  @computed
  String get stopwatchTime {
    double time = mainTime / 60;
    int minutes = time.floor();
    int seconds = ((time - time.truncate()) * 60).round();

    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @computed
  bool get isWorking {
    return intervalType == IntervalType.work;
  }

  @computed
  bool get isResting {
    return intervalType == IntervalType.rest;
  }

  @computed
  bool get canModifyWorkTime {
    return intervalType == IntervalType.rest || !started;
  }

  @computed
  bool get canModifyRestTime {
    return intervalType == IntervalType.work || !started;
  }


  Timer? stopwatch;

  @action
  void setMinutesMainTime(int time) {
    mainTime = time * 60;
  }

  @action
  void decreaseMainTime() {
    mainTime--;
  }

  @action
  void increaseWorkTime() {
    workTime++;
    if (intervalType == IntervalType.work && !started) {
      setMinutesMainTime(workTime);
    }
  }

  @action
  void decreaseWorkTime() {
    if ( workTime > 1) {
      workTime--;
      if (intervalType == IntervalType.work && !started) {
        setMinutesMainTime(workTime);
      }
    } 
  }

  @action
  void increaseRestTime() {
    restTime++;
    if (intervalType == IntervalType.rest && !started) {
      setMinutesMainTime(restTime);
    }
  }

  @action
  void decreaseRestTime() {
    if ( restTime > 1) {
      restTime--;
      if (intervalType == IntervalType.rest && !started) {
        setMinutesMainTime(restTime);
      }
    } 
  }

  @action
  void start() {
    started = true;
    stopwatch = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mainTime == 0) {
        _toggleIntervalType();
      } else {
        decreaseMainTime();
      }
    });
  }

  @action
  void stop() {
    started = false;
    stopwatch?.cancel();
  }

  @action
  void refresh() {
    stop();
    intervalType = IntervalType.work;
    setMinutesMainTime(workTime);
  }

  @action
  void _toggleIntervalType() {
    if (isWorking) {
      intervalType = IntervalType.rest;
      mainTime = restTime * 60;
    } else {
      intervalType = IntervalType.work;
      mainTime = workTime * 60;
    }
  }
}