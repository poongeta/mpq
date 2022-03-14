import 'package:flutter/material.dart';
import 'quizzler_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Quizzler !!',
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
  //TODO : ศึกษาการกำหนดค่าเพื่อใช้งาน textField -> https://docs.flutter.dev/cookbook/forms/retrieve-input
  //เริ่มต้นกำหนดค่าสำหรับ textField
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  //โดยถ้าต้องการอ้างถึงค่าข้อมูลใน textField นี้ สามารถอ้างถึงด้วย myController.text
  //จบการกำหนดค่าต่างๆสำหรับ textField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Text(
            'Hello, Please Tell Me your Name!',
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
                  textAlign: TextAlign.center,
                  controller: myController,
                ),
              ),
            ),
          ),
          //TODO : ศึกษาตัวอย่างการใช้ GestureDetector และ onTap -> https://docs.flutter.dev/cookbook/gestures/handling-taps
          //เริ่มต้นตัวอย่างการใช้งาน
          GestureDetector(
            onTap: () {
              //TODO : ศึกษาตัวอย่างการใช้ Navigator.push -> https://docs.flutter.dev/cookbook/navigation/navigation-basics
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Quizzler(name: myController.text)));
            },
            child: Expanded(
              child: Container(
                // ignore: prefer_const_constructors
                child: Text(
                  'NEXT',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueGrey,
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
