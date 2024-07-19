// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:memscirbe_challenge_app/screen/box_shipforship.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class Ship30for30 extends StatefulWidget {
  const Ship30for30({super.key});

  @override
  State<Ship30for30> createState() => _Ship30for30State();
}

class _Ship30for30State extends State<Ship30for30> {
  void onShip30for30() {
    Navigator.pushNamed(context, "/onwritemevryday");
  }

  void backtoship30for30() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F6F7),
        leading: GestureDetector(
            onTap: () {
              backtoship30for30();
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth < 400 ? constraints.maxWidth : 400;
          return SingleChildScrollView(
          child: Container(
            width: containerWidth,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F7),
            ),
            child: Center(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 10.0,
                          top: 10.0,
                        ),
                        child: Text(
                          "Ship 30 for 30",
                          style: TextStyle(
                            fontSize: 38,
                            color: Color(0xFF0D2755),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 12.0, bottom: 12.0),
                          child: Image.asset(
                            "images/gift.png",
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                      
                  // The three small containers
                      
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: Expanded(
                          child: Container(
                            height: 90,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFFFFF),
                              border: Border.all(
                                color: Color.fromARGB(255, 212, 211, 211),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Icon(Icons.calendar_today),
                      
                                Image.asset("images/calendar-event.png"),
                      
                                Text(
                                  "About",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0D2755),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      // Second box
                      
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 12.0, bottom: 12.0),
                        child: Container(
                          height: 90,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color.fromARGB(255, 212, 211, 211),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(Icons.calendar_today),
                      
                              Image.asset(
                                  "images/human-resources-search-team1.png"),
                      
                              Text(
                                "Participants",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF0D2755),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // Third box
                      
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, top: 10.0, bottom: 10.0, right: 12.0),
                          child: Container(
                            height: 90,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFFFFF),
                              border: Border.all(
                                color: Color.fromARGB(255, 212, 211, 211),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Icon(Icons.calendar_today),
                      
                                Image.asset("images/megaphone1.png"),
                      
                                Text(
                                  "Rewards",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0D2755),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                      
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0),
                    child: Container(
                      height: 350,
                      // width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color.fromARGB(255, 212, 211, 211),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Submissions",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF0D2755),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "You have consecutively checked in for 1 day(s)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF676767),
                              ),
                            ),
                          ),
                      
                  Expanded(child: BoxShipForShip()),
                      
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Remind me",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF0D2755),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              MySwitch(),
                            ],
                          ),
                
                ],
              ),
                        ),
                      ),
                  ],
                ),
            ),
            ));
        }
        
      ));
  }
}
