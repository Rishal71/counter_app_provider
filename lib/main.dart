import 'package:flutter/material.dart';
import '../view_models/counter_view_model.dart';
import 'package:flutter_provider/views/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_)=>CounterViewModel(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterScreen(),
    );  
  }
}
