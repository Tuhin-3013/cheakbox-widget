import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value == false ? "Unchecked" : "Checked",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Checkbox(
              value: _value,
              onChanged: (bool? val) {
                setState(() {
                  _value = val!;
                  print(_value);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
