import 'package:flutter/material.dart';
import 'package:flutter_provider/models/view_models/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterViewModel>().counter;
    return Scaffold(
      body: Center(
        child: 
           Text(counter.toString())
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<CounterViewModel>().increment(); 
      }),
    );
  }
}