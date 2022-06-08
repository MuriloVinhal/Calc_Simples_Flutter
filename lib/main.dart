import 'package:app_teste/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MinhaCalc());
}

class MinhaCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora-Simples",
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new Calculadora(),
    );
  }
}
