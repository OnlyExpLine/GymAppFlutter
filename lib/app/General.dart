import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Здесь пока ничего нет'),
      ),
    );
  }
}
