import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  String massage = '';
  TextEditingController tcName = TextEditingController();
  TextEditingController tcPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Input Demo')),
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(controller: tcName,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your name',
          suffixIcon: IconButton(onPressed: tcName.clear, icon: Icon(Icons.clear)
        ),),
      ),
      ),
       Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(controller: tcPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your name',
          suffixIcon: IconButton(onPressed: tcPassword.clear, icon: Icon(Icons.clear)
        ),),
      ),
      ),
      SizedBox(height: 20,),
      ElevatedButton(onPressed: updateMassage , child: Text('Ok'),),
      SizedBox(height: 20,),
      Text(massage)
    ],), );
  }
  
  void updateMassage () {
    setState(() {
     massage = tcName.text;    });
  }
}