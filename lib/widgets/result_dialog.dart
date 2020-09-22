import 'package:flutter/material.dart';
import 'package:imc_calculator/models/result_model.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;
  const ResultDialog(this.result);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Resultado'),
      content: Wrap(
        children: [
          ListTile(
            title: Text('${result.imcResult}'),
            subtitle: Text('Situacão: ${result.situation}'),
          ),
        ],
      ),
    );
  }
}
