// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  Computed<String>? _$stopwatchTimeComputed;

  @override
  String get stopwatchTime =>
      (_$stopwatchTimeComputed ??= Computed<String>(() => super.stopwatchTime,
              name: '_PomodoroStore.stopwatchTime'))
          .value;
  Computed<bool>? _$isWorkingComputed;

  @override
  bool get isWorking =>
      (_$isWorkingComputed ??= Computed<bool>(() => super.isWorking,
              name: '_PomodoroStore.isWorking'))
          .value;
  Computed<bool>? _$isRestingComputed;

  @override
  bool get isResting =>
      (_$isRestingComputed ??= Computed<bool>(() => super.isResting,
              name: '_PomodoroStore.isResting'))
          .value;
  Computed<bool>? _$canModifyWorkTimeComputed;

  @override
  bool get canModifyWorkTime => (_$canModifyWorkTimeComputed ??= Computed<bool>(
          () => super.canModifyWorkTime,
          name: '_PomodoroStore.canModifyWorkTime'))
      .value;
  Computed<bool>? _$canModifyRestTimeComputed;

  @override
  bool get canModifyRestTime => (_$canModifyRestTimeComputed ??= Computed<bool>(
          () => super.canModifyRestTime,
          name: '_PomodoroStore.canModifyRestTime'))
      .value;

  late final _$mainTimeAtom =
      Atom(name: '_PomodoroStore.mainTime', context: context);

  @override
  int get mainTime {
    _$mainTimeAtom.reportRead();
    return super.mainTime;
  }

  @override
  set mainTime(int value) {
    _$mainTimeAtom.reportWrite(value, super.mainTime, () {
      super.mainTime = value;
    });
  }

  late final _$workTimeAtom =
      Atom(name: '_PomodoroStore.workTime', context: context);

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$restTimeAtom =
      Atom(name: '_PomodoroStore.restTime', context: context);

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$startedAtom =
      Atom(name: '_PomodoroStore.started', context: context);

  @override
  bool get started {
    _$startedAtom.reportRead();
    return super.started;
  }

  @override
  set started(bool value) {
    _$startedAtom.reportWrite(value, super.started, () {
      super.started = value;
    });
  }

  late final _$intervalTypeAtom =
      Atom(name: '_PomodoroStore.intervalType', context: context);

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void setMinutesMainTime(int time) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.setMinutesMainTime');
    try {
      return super.setMinutesMainTime(time);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseMainTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decreaseMainTime');
    try {
      return super.decreaseMainTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseWorkTime');
    try {
      return super.increaseWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseWorkTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decreaseWorkTime');
    try {
      return super.decreaseWorkTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseRestTime');
    try {
      return super.increaseRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseRestTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decreaseRestTime');
    try {
      return super.decreaseRestTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void start() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.start');
    try {
      return super.start();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _toggleIntervalType() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore._toggleIntervalType');
    try {
      return super._toggleIntervalType();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mainTime: ${mainTime},
workTime: ${workTime},
restTime: ${restTime},
started: ${started},
intervalType: ${intervalType},
stopwatchTime: ${stopwatchTime},
isWorking: ${isWorking},
isResting: ${isResting},
canModifyWorkTime: ${canModifyWorkTime},
canModifyRestTime: ${canModifyRestTime}
    ''';
  }
}
