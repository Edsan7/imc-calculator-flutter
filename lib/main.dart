import 'package:flutter/material.dart';
import 'package:imc_calculator/pages/imc_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
          height: 50,
        )
      ),
      home: ImcCalculator(),
    );
  }
}
