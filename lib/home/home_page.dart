import 'package:calculadora_imc/home/home_components.dart';
import 'package:calculadora_imc/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final controller = Get.put<HomeController>(HomeController());

  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              peso.text = '';
              altura.text = '';
              controller.reset();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.person_outline_outlined, size: 120.0, color: Colors.green),
            CampoTexto('Peso em kg', peso),
            CampoTexto('Altura em metros', altura),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: RaisedButton.icon(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  color: Colors.green,
                  label: Text('Calcular', style: TextStyle(color: Colors.white, fontSize: 25.0)),
                  onPressed: () {
                    controller.calculaIMC(peso.text, altura.text);
                  },
                  icon: Icon(Icons.calculate_outlined, size: 30.0, color: Colors.white)
              ),
            ),
            GetBuilder<HomeController>(
                builder: (_) => Column(
                  children: [
                    Text(controller.msg1,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25.0
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(controller.msg2,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.0
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
          ],
        ),
      )
    );
  }
}
