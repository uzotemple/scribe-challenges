import 'package:flutter/material.dart';

class DropDownRecuring extends StatefulWidget {
  const DropDownRecuring({Key? key}) : super(key: key);

  @override
  State<DropDownRecuring> createState() => _DropDownRecuringState();
}

class _DropDownRecuringState extends State<DropDownRecuring> {
  String dropdownvalue = "Select";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down_outlined),
        iconSize: 24,
        elevation: 16,
        underline: Container(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
        items: [
          DropdownMenuItem<String>(
            value: "Select",
            child: Text(
              "Select",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Daily",
            child: Text("Daily",style: TextStyle(color: Color(0xFF828282), fontSize: 16),),
          ),
          DropdownMenuItem<String>(
            value: "Weekly",
            child: Text("Weekly",style: TextStyle(color: Color(0xFF828282), fontSize: 16),),
          ),
          DropdownMenuItem<String>(
            value: "Monthly",
            child: Text("Monthly",style: TextStyle(color: Color(0xFF828282), fontSize: 16),),
          ),
        ],
      ),
    );
  }
}
