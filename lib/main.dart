import 'package:bloc_flutter_counter/couter_observer.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}
