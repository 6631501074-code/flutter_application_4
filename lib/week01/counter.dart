import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  String massage = 'Hello';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Counter'),),
    body: Text(massage),
    floatingActionButton: FloatingActionButton(onPressed:() {
      // debugPrint('test'); //check button
      setState(() {
       if (massage == 'Hello') {
              massage = 'hi';
            } else {
              massage = 'Hello';
            }
      });
    },child: Text('click'),),
  );
  }
}