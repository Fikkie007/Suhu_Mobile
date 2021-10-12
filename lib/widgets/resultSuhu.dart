import 'package:flutter/material.dart';

class ResultSuhu extends StatelessWidget {
  const ResultSuhu({
    Key? key,
    required this.kelvin,
    required this.titel,
  }) : super(key: key);

  final double kelvin;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$titel",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "$kelvin",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
