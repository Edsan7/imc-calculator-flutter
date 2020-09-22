import 'package:flutter/material.dart';
import 'package:imc_calculator/pages/imc_page.dart';

import 'core/theme_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      debugShowCheckedModeBanner: false,
      theme: themeApp,
      home: ImcCalculator(),
    );
  }
}
