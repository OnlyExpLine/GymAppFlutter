import 'package:flutter/material.dart';
import 'package:gym_app_project/app/FitAsPage.dart';
import 'package:gym_app_project/components/TextFieldComponents.dart';
import 'constant.dart';
void main() {
  runApp( MaterialApp(
    theme: ThemeData(
        primaryColor: indigoColor,
    scaffoldBackgroundColor: deepPurple50),
    home: TextFieldComponents(),
  ));
}
