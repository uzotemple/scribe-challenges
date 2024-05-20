import 'package:flutter/material.dart';
import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class PinPostAction extends StatefulWidget {
  const PinPostAction({super.key});

  @override
  State<PinPostAction> createState() => _PinPostActionState();
}

class _PinPostActionState extends State<PinPostAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jennifer Lawrence",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF0D2755),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFE4E4E4),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
                border: Border.all(
                  color: Color(0xFFE4E4E4),
                  width: 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("images/Rectangle2216.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0, right: 10.0),
                        child: Text(
                          "Jennifer Lawrence",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF0D2755),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Human Resource",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF676767),
                          ),
                        ),
                      ),


                      Text(
                        "400 points",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF0D2755),
                        ),
                      ),


                    ],
                  )
                ],
              ),
            ),
          ),

          // Check In Container

          Padding(
                    padding: const EdgeInsets.all(10.0),
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
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Check in",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF0D2755),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "You have consecutively checked in for 1 day(s)",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF676767),
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Container(
                                  height: 95,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 212, 211, 211),
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
                                          color: Color(0xFF000000),
                                          width: 3,
                                        ),
                                      ),
                                       child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Color(0xFFFFFFFF),
                                            child:
                                                Image.asset("images/Vector(22).png")),
                                     ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                      color: Color(0xFFDBDBDB),
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
                                      Image.asset("images/x-circle(1).png"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
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
                                        )
                                      ),
                                       child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Color(0xFFFFFFFF),
                                            child:
                                                Image.asset("images/Union.png")),
                                     ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
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
                                        )
                                      ),
                                       child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Color(0xFFFFFFFF),
                                            child:
                                                Image.asset("images/Union.png")),
                                     ),


                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Line 2

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Container(
                                  height: 95,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFFF3D5),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 212, 211, 211),
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
                                          "Day 5",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF0D2755),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                      // Image.asset("images/Ellipse1475.png"),
                                      Image.asset("images/x-circle(1).png"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
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
                                      Image.asset("images/x-circle(1).png"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
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
                                        )
                                      ),
                                       child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Color(0xFFFFFFFF),
                                            child:
                                                Image.asset("images/Union.png")),
                                     ),
                                      


                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, left: 10.0, right: 10.0),
                                child: Container(
                                  height: 95,
                                  width: 80,
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
                                        border: Border.all(
                                          color: Color(0xFFF2B71F),
                                        )
                                      ),
                                       child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: Color(0xFFFFFFFF),
                                            child:
                                                Image.asset("images/Union.png")),
                                     ),

                                     
                                    ],
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


        ],
      ),
    );
  }
}
