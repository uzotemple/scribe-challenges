// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F7),
              ),
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
                      height: 340,
                      width: 400,
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    onShip30for30();
                                  },
                                  child: Container(
                                    height: 95,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFFFF3D5),
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 212, 211, 211),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.calendar_today),

                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "Day 1",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0D2755),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        // Image.asset("images/Ellipse1475.png"),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFFF2B71F),
                                              width: 2,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor:
                                                  Color(0xFFFFFFFF),
                                              child: Image.asset(
                                                  "images/Union.png")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 95,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.calendar_today),

                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Day 2",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFF2B71F),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xFFFFFFFF),
                                            child: Image.asset(
                                                "images/Union.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.calendar_today),

                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Day 3",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFF2B71F),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xFFFFFFFF),
                                            child: Image.asset(
                                                "images/Union.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 10.0,
                                      left: 10.0,
                                      right: 10.0),
                                  child: Container(
                                    height: 95,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFFFF3D5),
                                      border: Border.all(
                                        color: Color(0xFFFFFFFF),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.calendar_today),

                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "Day 4",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0D2755),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        // Image.asset("images/Ellipse1475.png"),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFFF2B71F),
                                              width: 2,
                                            ),
                                          ),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor:
                                                  Color(0xFFFFFFFF),
                                              child: Image.asset(
                                                  "images/Union.png")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Line 2

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Container(
                                  height: 95,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 212, 211, 211),
                                    //   width: 1,
                                    // ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.calendar_today),

                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Day 5",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFF2B71F),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xFFFFFFFF),
                                            child: Image.asset(
                                                "images/Union.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.calendar_today),

                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Day 6",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      // Image.asset("images/Union.png"),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFF2B71F),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xFFFFFFFF),
                                            child: Image.asset(
                                                "images/Union.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    border: Border.all(
                                      color: Color(0xFFFFFFFF),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(Icons.calendar_today),

                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Day 7",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFF2B71F),
                                            width: 2,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xFFFFFFFF),
                                            child: Image.asset(
                                                "images/Union.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, left: 10.0, right: 10.0),
                                  child: Container(
                                    height: 95,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFFFF3D5),
                                      border: Border.all(
                                        color: Color(0xFFFFFFFF),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.calendar_today),

                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "Day 8",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF0D2755),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        // Image.asset("images/Ellipse1475.png"),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            // border: Border.all(
                                            //   color: Color(0xFFF2B71F),
                                            //   width: 2,
                                            // ),
                                          ),
                                          child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor:
                                                  Color(0xFFFFFFFF),
                                              child: Image.asset(
                                                  "images/Union.png")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Reminder

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

                  // Last Container

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0),
                    child: Container(
                      height: 300,
                      width: 400,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, top: 12.0, bottom: 12.0),
                                child: Image.asset("images/Ellipse124.png"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Vincent Mayaki",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF0D2755),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Color(0xFF828282),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          "Nov, 213, 2023. 11:00am",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),

                          // Oshehe Hallo

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, top: 12.0, bottom: 12.0),
                                child: Image.asset("images/Ellipse124(1).png"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Osehe Hallo",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF0D2755),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Color(0xFF828282),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          "Nov, 213, 2023. 11:05am",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),

                          // Next

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, top: 12.0, bottom: 12.0),
                                child: Image.asset("images/Ellipse124(1).png"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Osehe Hallo",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF0D2755),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            bottom: 10.0),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Color(0xFF828282),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(
                                          "Nov, 213, 2023. 11:05am",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
