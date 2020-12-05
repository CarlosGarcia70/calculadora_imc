import 'package:get/get.dart';

class HomeController extends GetxController {

  double imc = 0.0;
  String msg1 = '';
  String msg2 = '';

  void reset() {
    imc = 0.0;
    msg1 = '';
    msg2 = '';
    update();
  }

  void calculaIMC(String peso, String altura) {
    double _peso = double.parse(peso);
    double _altura = double.parse(altura);
    imc = (_peso/(_altura * _altura));
    msg1 = 'Seu imc é ${imc.toStringAsPrecision(5)}!';
    if(imc < 18.6) {
      msg2 = 'Você é subnutrido';
    } else if (imc < 24.9) {
      msg2 = 'Peso ideal';
    } else if (imc < 29.9) {
      msg2 = 'Sobrepeso';
    } else if (imc < 34.9) {
      msg2 = 'Obesidade leve';
    } else if (imc < 39.9) {
      msg2 = 'Obesidade moderada';
    } else {
      msg2 = 'Obesidade mórbida';
    }
    update();
  }
}