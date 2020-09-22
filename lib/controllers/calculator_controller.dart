import 'package:imc_calculator/helpers/parse_helper.dart';
import 'package:imc_calculator/models/imc_model.dart';
import 'package:imc_calculator/models/result_model.dart';

class CalculatorController {
  final imc = ImcModel();

  void setWeight(String value) => imc.weight = ParseHelper.toDouble(value);

  void setHeight(String value) => imc.height = ParseHelper.toDouble(value);

  ResultModel calculateImc(){
    final result = ResultModel();
    result.imcResult = imc.getImc;
    result.situation = imc.getSituation();
    return result;
  }
}
