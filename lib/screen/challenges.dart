import 'package:flutter/material.dart';
import 'package:memscirbe_challenge_app/screen/tabbar_tabbarview.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class Challenges extends StatefulWidget {
  const Challenges({Key? key}) : super(key: key);


  @override
  State<Challenges> createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {

  int _currentIndex = 0;

  void onFloatingActionButton() {
    if (_currentIndex == 0) {
      print("onChallenge is called");
      onChallenge();
    } else if (_currentIndex == 2) {
      print("onChallenge2 is called");
      onChallenge2();
    }
  }


  void onChallenge() {
    Navigator.pushNamed(context, "/oncreatenewchallenge");
  }

  void onChallenge2() {
    Navigator.pushNamed(context, "/onnewrewarditem");
  }

  void backfromchallenge() {
    Navigator.pop(context);
  }

  void onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F6F7),
        titleSpacing: 0,
        title: Text(
          "Challenges",
          style: TextStyle(color: Color(0xFF0D2755), fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
            onTap: () {
              backfromchallenge();
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Icon(Icons.search),
        ],
      ),

      body: TabBars(),
      
      floatingActionButton: _currentIndex == 1 ? null : FloatingActionButton(
        onPressed: onFloatingActionButton,
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Color(0xFFFF9C2A),
        foregroundColor: Color(0xFFFFFFFF),
        shape: CircleBorder(),
      ),
    );
  }
}
