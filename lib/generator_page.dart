import 'package:flutter/material.dart';

class Generator extends StatelessWidget {
  Generator({required this.cnum});
  final String cnum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Color Result:'),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
