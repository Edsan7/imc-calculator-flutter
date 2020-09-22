class ValidatorHelper {
  static String validateFields(String value){
   if(value.isEmpty) return 'Campo obrigatório';
   else if(double.parse(value) <= 0) return 'Digite valores maiores que zero';
   else return null;
  }
}