import 'package:flutter/material.dart';

class TimeSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker Container Example'),
      ),
      body: TimePickerContainer(),
    );
  }
}

class TimePickerContainer extends StatefulWidget {
  @override
  _TimePickerContainerState createState() => _TimePickerContainerState();
}

class _TimePickerContainerState extends State<TimePickerContainer> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    setState(() {
      _selectedTime = pickedTime ?? TimeOfDay.now();
      selecttime = "";
    });
  }

  String selecttime = "Select Time";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectTime(context);
      },
      child: Container(
        // width: 370,
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border.all(
            color: Color(0xFFDBDBDB),
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        // padding: EdgeInsets.all(20.0),
        // color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.access_time,
                color: Color(0xFF828282),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                selecttime.isNotEmpty?selecttime: '${_selectedTime.format(context)}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF828282),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
