import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), // Add padding to the container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 360,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
                border: Border.all(
                  color: Color(0xFFE4E4E4),
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 8.0), // Add vertical padding between radio buttons
              child: RadioListTile<int>(
                title: Text(
                  'Option 1',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0D2755),
                  ),
                ),
                value: 1,
                groupValue: _selectedValue,
                onChanged: (int? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 8.0), // Add vertical padding between radio buttons
              child: RadioListTile<int>(
                title: Text('Option 2'),
                value: 2,
                groupValue: _selectedValue,
                onChanged: (int? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 8.0), // Add vertical padding between radio buttons
              child: RadioListTile<int>(
                title: Text('Option 3'),
                value: 3,
                groupValue: _selectedValue,
                onChanged: (int? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
