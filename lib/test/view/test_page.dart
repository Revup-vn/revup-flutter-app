import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Slider(
            min: 1,
            max: 50,
            divisions: 49,
            label: _value.toString(),
            activeColor: Colors.amber,
            value: _value,
            onChanged: (v) {
              setState(() {
                _value = v;
              });
            },
          ),
        ],
      ),
    );
  }
}
