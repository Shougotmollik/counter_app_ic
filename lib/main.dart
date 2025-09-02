import 'package:counter_app_ic/app.dart';
import 'package:counter_app_ic/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterCubit())],
      child: const CounterApp(),
    ),
  );
}
