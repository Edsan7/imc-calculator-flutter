import 'dart:math';

class ImcModel {
  double weight;
  double height;
  
  ImcModel({
    this.weight,
    this.height,
  });

  get getImc => double.parse((weight / pow(height, 2)).toStringAsFixed(2));
  
  String getSituation() {
    if(getImc > 40) return 'Obesidade grave';
    else if(getImc > 30) return 'Obesidade';
    else if(getImc > 25) return 'Sobrepeso';
    else if(getImc > 18.5) return 'Normal';
    else return 'Magreza';
  }
} 
