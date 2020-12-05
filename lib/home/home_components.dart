import 'package:flutter/material.dart';

Widget CampoTexto(String label, TextEditingController controller) {
  return TextField(
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
  decoration: InputDecoration(
    labelText: label,
    labelStyle: TextStyle(
      color: Colors.green
      )
    ),
  style: TextStyle(
    color: Colors.green,
    fontSize: 25.0
    ),
    controller: controller,
  );
}