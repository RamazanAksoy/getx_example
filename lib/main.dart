import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/HomeBinding.dart';
import 'package:getx_example/lang/lang.dart';
import 'package:getx_example/screens/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale("en", "US"),
      title: 'Flutter Demo',
      home: MyHomePage(),
      theme: ThemeData(),
    );
  }
}
