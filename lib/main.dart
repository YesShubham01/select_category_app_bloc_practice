import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mock_machine_coding_practise/bloc/category_selection_bloc/category_selection_bloc.dart';
import 'package:mock_machine_coding_practise/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CategorySelectionBloc())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const Homescreen(),
      ),
    );
  }
}
