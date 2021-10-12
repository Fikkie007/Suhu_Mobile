import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/inputSuhu.dart';
import 'widgets/resultSuhu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();
  double inputUser = 0;
  double kelvin = 0;
  double farenheit = 0;
  double reamur = 0;

  konversi() {
    setState(() {
      inputUser = double.parse(etInput.text);
      kelvin = inputUser + 273;
      farenheit = inputUser * 9 / 5 + 32;
      reamur = inputUser * 4 / 5;
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Convertor"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InputSuhu(etInput: etInput),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ResultSuhu(
                      kelvin: kelvin,
                      titel: 'Kelvin',
                    ),
                    Column(
                      children: [
                        Text(
                          "Farenheit",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "$farenheit",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Reamur",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "$reamur",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: konversi,
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      child: Text("Konversi"),
                    ))
              ],
            ),
          )),
    );
  }
}
