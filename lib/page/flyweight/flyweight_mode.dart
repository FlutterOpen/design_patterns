import 'dart:collection';

import 'package:flutter/material.dart';

/// Created by NieBin on 2020-03-26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
abstract class Clock {
  Color color;

  Widget display();
}

class PinkClock implements Clock {
  @override
  Color color = Colors.pink;

  @override
  Widget display() => Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.green),
          color: color,
        ),
        child: Center(child: Text(DateTime.now().toIso8601String())),
      );
}

class GreenClock implements Clock {
  @override
  Color color = Colors.green;

  @override
  Widget display() => Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Center(child: Text(DateTime.now().toIso8601String())),
      );
}

class BlueClock implements Clock {
  @override
  Color color = Colors.blue;

  @override
  Widget display() => Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Center(child: Text(DateTime.now().toIso8601String())),
      );
}

class WhiteClock implements Clock {
  @override
  Color color = Colors.white;

  @override
  Widget display() => Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color,
            border: Border.all(color: Colors.orangeAccent)),
        child: Center(child: Text(DateTime.now().toIso8601String())),
      );
}

class ClockManager {
  static Map<String, Clock> _clocks = HashMap();

  static Clock getColorClock(String color) {
    if (_clocks.containsKey(color)) {
      return _clocks[color];
    } else {
      _clocks.putIfAbsent(color, () {
        if (color.toLowerCase() == "pink") {
          return PinkClock();
        } else if (color.toLowerCase() == "green") {
          return GreenClock();
        } else if (color.toLowerCase() == "blue") {
          return BlueClock();
        } else {
          return WhiteClock();
        }
      });
      return _clocks[color];
    }
  }

  static Clock removeClock(String color) {
    if (_clocks.containsKey(color)) {
      return _clocks.remove(color);
    } else {
      return null;
    }
  }

  static void clearAll() {
    _clocks.clear();
  }
}
