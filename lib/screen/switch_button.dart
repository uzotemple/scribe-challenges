import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {

  bool isSwitched = false;
  
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeTrackColor: Color.fromARGB(255, 222, 218, 218),
        activeColor: Color(0xFF627D98),
        inactiveTrackColor: Color(0xFF627D98),
        inactiveThumbColor: Color(0xFFFFFFFF),
      ),
    );
  }
}