import 'package:flutter/material.dart';
import 'generator_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Palette Generator',
      home: FirstScreen(),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Text(
            'Enter the number of colors in pallete:',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: myController,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Generator(cnum: myController.text)));
            },
            child: Expanded(
              child: Container(
                // ignore: prefer_const_constructors
                child: Text(
                  'Generate',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.deepPurple,
                height: 50.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
