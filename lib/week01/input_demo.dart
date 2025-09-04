import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  String massage = '';
  TextEditingController tcName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Input Demo')),
    body: Column(children: [
      TextField(controller: tcName,),
      ElevatedButton(onPressed: updateMassage , child: Text('Ok'),),
      Text(massage)
    ],), );
  }
  
  void updateMassage () {
    setState(() {
     massage = tcName.text;    });
  }
}