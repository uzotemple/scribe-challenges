import 'package:flutter/material.dart';

class DateSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker Container Example'),
      ),
      body: DateSelectionContainer(),
    );
  }
}

class DateSelectionContainer extends StatefulWidget {
  @override
  _DateSelectionContainerState createState() => _DateSelectionContainerState();
}

class _DateSelectionContainerState extends State<DateSelectionContainer> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        selectdate = "";
      });
    }
  }

  String selectdate = "Select Date";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectDate(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          border: Border.all(
            color: Color(0xFFDBDBDB),
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
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
                Icons.calendar_today,
                color: Color(0xFF828282),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                selectdate.isNotEmpty
                    ? selectdate
                    : '$selectdate ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
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
