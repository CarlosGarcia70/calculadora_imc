import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_bindings.dart';
import 'home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
      title: 'Calculadora de IMC com GetX',
      initialRoute: '/',
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomeBinding())
      ]
  ));
}