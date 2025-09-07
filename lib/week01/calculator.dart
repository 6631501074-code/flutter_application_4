  import 'package:flutter/material.dart';
  import 'dart:math';

  class Calculator extends StatefulWidget {
    const Calculator({super.key});

    @override
    State<Calculator> createState() => _CalculatorState();
  }

  class _CalculatorState extends State<Calculator> {
    final TextEditingController _num1Controller = TextEditingController();
    final TextEditingController _num2Controller = TextEditingController();

    String? message;

    void _sum() {
      if (_validateInputs()) {
        int n1 = int.parse(_num1Controller.text);
        int n2 = int.parse(_num2Controller.text);
        setState(() {
          message = "Result = ${n1 + n2}";
        });
      }
    }

    void _power() {
      if (_validateInputs()) {
        int n1 = int.parse(_num1Controller.text);
        int n2 = int.parse(_num2Controller.text);
        setState(() {
          message = "Result = ${pow(n1, n2)}";
        });
      }
    }

    void _clear() {
      _num1Controller.clear();
      _num2Controller.clear();
      setState(() {
        message = null;
      });
    }

    bool _validateInputs() {
      if (_num1Controller.text.isEmpty || _num2Controller.text.isEmpty) {
        setState(() {
          message = "Please input both numbers";
        });
        return false;
      }
      if (int.tryParse(_num1Controller.text) == null ||
          int.tryParse(_num2Controller.text) == null) {
        setState(() {
          message = "Please input only numbers";
        });
        return false;
      }
      return true;
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // แก้ตรงนี้
            children: [
              TextField(
                controller: _num1Controller,
                decoration: const InputDecoration(labelText: "Number 1"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _num2Controller,
                decoration: const InputDecoration(labelText: "Number 2"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              // ใช้ Center ครอบปุ่มทั้งหมด
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: _sum,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text("Sum"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _power,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text("Power"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _clear,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text("Clear"),
                    ),
                    const SizedBox(height: 20),
                    if (message != null)
                      Text(
                        message!,
                        style: const TextStyle(color: Colors.red, fontSize: 16),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
