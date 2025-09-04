import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  String massage = 'Hello';
  int count = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Counter'),backgroundColor: Colors.yellow[500],),
    body: Center(child: Text('Count: $count',style: TextStyle(fontSize: 30),)),
    floatingActionButton: FloatingActionButton(onPressed:update ,child: Text('click',style: TextStyle(fontSize: 20),),backgroundColor: Colors.yellow[500],),
  );
  }

  void update() {
    setState(() {
      count++;
    });
  }
}