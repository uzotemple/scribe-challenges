import 'package:flutter/material.dart';

class DropDownForNoOfCycle extends StatefulWidget {
  const DropDownForNoOfCycle({Key? key}) : super(key: key);

  @override
  State<DropDownForNoOfCycle> createState() => _DropDownForNoOfCycleState();
}

class _DropDownForNoOfCycleState extends State<DropDownForNoOfCycle> {
  String dropdownvalue = "1";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: dropdownvalue,
        icon: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Icon(Icons.keyboard_arrow_down_outlined),
        ),
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
            value: "1",
            child: Text(
              "1",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),

          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "2",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              "3",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "4",
            child: Text(
              "4",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "5",
            child: Text(
              "5",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "6",
            child: Text(
              "6",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "7",
            child: Text(
              "7",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "8",
            child: Text(
              "8",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "9",
            child: Text(
              "9",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "10",
            child: Text(
              "10",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "11",
            child: Text(
              "11",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          DropdownMenuItem<String>(
            value: "12",
            child: Text(
              "12",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
          ),
          
        ],
      ),
    );
  }
}
