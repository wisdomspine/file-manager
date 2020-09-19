import 'dart:async';

import 'package:rxdart/subjects.dart';

class DrawerProvider {
  final BehaviorSubject<bool> _subject = BehaviorSubject<bool>();
  StreamSubscription<bool> subscribe(void Function(bool) callback) {
    return _subject.stream.listen((event) {
      callback(event);
    });
  }

  void next(bool state) {
    _subject.add(state);
  }
}
