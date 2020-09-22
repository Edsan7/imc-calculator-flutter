import 'package:flutter/material.dart';
import 'package:imc_calculator/controllers/calculator_controller.dart';
import 'package:imc_calculator/helpers/validator_helper.dart';
import 'package:imc_calculator/widgets/result_dialog.dart';

class ImcCalculator extends StatefulWidget {
  @override
  _ImcCalculatorState createState() => _ImcCalculatorState();
}

class _ImcCalculatorState extends State<ImcCalculator> {
  final _key = GlobalKey<FormState>();
  final _controller = CalculatorController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular IMC'),
      ),
      body:  SingleChildScrollView(
        child: _buildForm(),  
      )
      
    );
  }

  Form _buildForm() {
    return Form(
      key: _key,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            _buildHeaderText('Informe os valores abaixo'),
            SizedBox(height: 20),
            _buildNumberInputField('Digite a altura (em metros)', _controller.setHeight),
            SizedBox(height: 20),
            _buildNumberInputField('Digite o peso (em Kg)', _controller.setWeight),
            SizedBox(height: 30,),
            _buildSendButton(),
            SizedBox(height: 10,),
            _buildClearFields()
          ],
        ),
      ),
    );
  }

  _buildHeaderText(label) {
    return Container(
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _buildNumberInputField(label, Function(String) onSaved) {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: onSaved,
      validator: ValidatorHelper.validateFields,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: label),
    );
  }

  _buildClearFields(){
    return RaisedButton(
      onPressed: _clearFields,
      child: Text('Limpar', style: TextStyle(fontSize: 18),),
    );
  }

  void _clearFields() => _key.currentState.reset();

  _buildSendButton(){
    return RaisedButton(
      onPressed: _calculate,
      child: Text('Calcular', style: TextStyle(fontSize: 18),),
    );
  }

  void _calculate(){
    if(_key.currentState.validate()){
      _key.currentState.save();
      final result = _controller.calculateImc();
      showDialog(context: context, builder: (context) => ResultDialog(result));
    }
  }
}
