import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spinner Example'),
        ),
        body: Center(
          child: Spinner(
            value: 0, // Initial value
            minValue: 0, // Minimum value
            maxValue: 100, // Maximum value
            onChanged: (value) {
              // Handle value changes
              print('Selected value: $value');
            },
          ),
        ),
      ),
    );
  }
}

class Spinner extends StatefulWidget {
  final int value;
  final int minValue;
  final int maxValue;
  final ValueChanged<int>? onChanged;

  const Spinner({
    Key? key,
    required this.value,
    required this.minValue,
    required this.maxValue,
    this.onChanged,
  }) : super(key: key);

  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  void _increment() {
    setState(() {
      if (_value < widget.maxValue) {
        _value++;
        widget.onChanged?.call(_value);
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_value > widget.minValue) {
        _value--;
        widget.onChanged?.call(_value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Text(
          '$_value',
          style: TextStyle(fontSize: 20),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}
