// import 'package:flutter/material.dart';

// class BoxShipForShip extends StatefulWidget {
//   @override
//   State<BoxShipForShip> createState() => _BoxShipForShipState();
// }

// class _BoxShipForShipState extends State<BoxShipForShip> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daily Challenges',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DailyChallenges(),
//     );
//   }
// }

// class DailyChallenges extends StatefulWidget {
//   @override
//   _DailyChallengesState createState() => _DailyChallengesState();
// }

// class _DailyChallengesState extends State<DailyChallenges> {
//   // Example statuses for each day (true = completed, false = not taken)
//   List<bool> statuses = List.generate(
//       8, (index) => false); // Initialize with all challenges not taken
//   List<DateTime> lastClickTimes =
//       List.generate(8, (index) => DateTime.now()); // Store last click times

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daily Challenges'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             buildChallengeRow([0, 1, 2, 3]),
//             buildChallengeRow([4, 5, 6, 7]),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildChallengeRow(List<int> days) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: days
//           .map((index) => challengeContainer("Day ${index + 1}", index))
//           .toList(),
//     );
//   }

//   Widget challengeContainer(String day, int index) {
//     bool clicked = statuses[index];
//     DateTime lastClickTime = lastClickTimes[index];

//     // Check if 24 hours have passed since last click
//     bool showMark =
//         clicked || DateTime.now().difference(lastClickTime).inHours >= 24;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           // Toggle click status and update last click time
//           statuses[index] = !statuses[index];
//           lastClickTimes[index] = DateTime.now();
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(top: 10.0, bottom: 1.0, right: 10.0,),
//         child: Container(
//           height: 95,
//           width: 75,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Color(0xFFFFF3D5),
//             border: Border.all(
//               color: Color(0xFFFFFFFF),
//               width: 1,
//             ),
//           ),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               // Union image
//               Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     color: Color(0xFFF2B71F), // Outline color for the CircleAvatar
//                     width: 2, // Outline width
//                   ),
//                 ),
//                 child: CircleAvatar(
//                   radius: 13, // Adjust radius as needed
//                   backgroundColor: Colors.transparent,
//                   // backgroundImage: AssetImage("images/Union.png"),
//                   child: Image.asset("images/Union.png"),
//                 ),
//               ),
//               // Mark (check or X) displayed conditionally
//               if (showMark)
//                 Icon(
//                   clicked ? Icons.check : Icons.close,
//                   color: clicked ? Colors.green : Colors.black,
//                   size: 20,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class BoxShipForShip extends StatefulWidget {
//   @override
//   State<BoxShipForShip> createState() => _BoxShipForShipState();
// }

// class _BoxShipForShipState extends State<BoxShipForShip> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daily Challenges',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DailyChallenges(),
//     );
//   }
// }

// class DailyChallenges extends StatefulWidget {
//   @override
//   _DailyChallengesState createState() => _DailyChallengesState();
// }

// class _DailyChallengesState extends State<DailyChallenges> {
//   // Example statuses for each day (true = completed, false = not taken)
//   List<bool> statuses = List.generate(8, (index) => false); // Initialize with all challenges not taken
//   List<DateTime> lastClickTimes = List.generate(8, (index) => DateTime.now()); // Store last click times

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daily Challenges'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             buildChallengeRow([0, 1, 2, 3]),
//             buildChallengeRow([4, 5, 6, 7]),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildChallengeRow(List<int> days) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: days.map((index) => challengeContainer("Day ${index + 1}", index)).toList(),
//     );
//   }

//   Widget challengeContainer(String day, int index) {
//     bool clicked = statuses[index];
//     DateTime lastClickTime = lastClickTimes[index];

//     // Check if 24 hours have passed since last click
//     bool showMark = clicked || DateTime.now().difference(lastClickTime).inHours >= 24;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           // Toggle click status and update last click time
//           statuses[index] = !statuses[index];
//           lastClickTimes[index] = DateTime.now();
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(top: 10.0, bottom: 1.0, right: 10.0,),
//         child: Container(
//           height: 95,
//           width: 75,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Color(0xFFFFF3D5),
//             border: Border.all(
//               color: Color(0xFFFFFFFF),
//               width: 1,
//             ),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       day,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF0D2755),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   // Union image
//                   if (!showMark)
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Color(0xFFF2B71F), // Outline color for the CircleAvatar
//                           width: 2, // Outline width
//                         ),
//                       ),
//                       child: CircleAvatar(
//                         radius: 13, // Adjust radius as needed
//                         backgroundColor: Colors.transparent,
//                         child: Image.asset(
//                           "images/Union.png",
//                           scale: 1.5, // Adjust scale factor as needed to resize the image
//                         ),
//                       ),
//                     ),
//                   // Mark (check or X) displayed conditionally
//                   if (showMark)
//                     Icon(
//                       clicked ? Icons.check : Icons.close,
//                       color: clicked ? Colors.green : Colors.red,
//                       size: 20,
//                     ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class BoxShipForShip extends StatefulWidget {
//   @override
//   State<BoxShipForShip> createState() => _BoxShipForShipState();
// }

// class _BoxShipForShipState extends State<BoxShipForShip> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daily Challenges',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DailyChallenges(),
//     );
//   }
// }

// class DailyChallenges extends StatefulWidget {
//   @override
//   _DailyChallengesState createState() => _DailyChallengesState();
// }

// class _DailyChallengesState extends State<DailyChallenges> {
//   // Example statuses for each day (true = completed, false = not taken)
//   List<bool> statuses = List.generate(8, (index) => false); // Initialize with all challenges not taken
//   List<DateTime> lastClickTimes = List.generate(8, (index) => DateTime.now()); // Store last click times

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             buildChallengeRow([0, 1, 2, 3]),
//             buildChallengeRow([4, 5, 6, 7]),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildChallengeRow(List<int> days) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: days.map((index) => challengeContainer("Day ${index + 1}", index)).toList(),
//     );
//   }

//   Widget challengeContainer(String day, int index) {
//     bool clicked = statuses[index];
//     DateTime lastClickTime = lastClickTimes[index];

//     // Check if 24 hours have passed since last click
//     bool showMark = clicked || DateTime.now().difference(lastClickTime).inSeconds >= 24;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           // Toggle click status and update last click time
//           statuses[index] = !statuses[index];
//           lastClickTimes[index] = DateTime.now();
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 1.0, right: 10.0),
//         child: Container(
//           height: 95,
//           width: 75,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Color(0xFFFFF3D5),
//             border: Border.all(
//               color: Color(0xFFFFFFFF),
//               width: 1,
//             ),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       day,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF0D2755),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   // Union image
//                   if (!showMark)
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Color(0xFFF2B71F), // Outline color for the CircleAvatar
//                           width: 2, // Outline width
//                         ),
//                       ),
//                       child: CircleAvatar(
//                         radius: 13, // Adjust radius as needed
//                         backgroundColor: Colors.transparent,
//                         child: Image.asset(
//                           "images/Union.png",
//                           scale: 1.5, // Adjust scale factor as needed to resize the image
//                         ),
//                       ),
//                     ),
//                   // Mark (check or X) displayed conditionally inside a CircleAvatar
//                   if (showMark)
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: clicked ? Colors.green : Colors.red, // Outline color for the CircleAvatar
//                           width: 2, // Outline width
//                         ),
//                       ),
//                       child: CircleAvatar(
//                         radius: 13, // Adjust radius as needed
//                         backgroundColor: clicked ? Colors.green : Colors.transparent,
//                         child: Icon(
//                           clicked ? Icons.check : Icons.close,
//                           color: clicked ? Colors.white : Colors.black, // Color for the check or X icon
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class BoxShipForShip extends StatefulWidget {
  @override
  State<BoxShipForShip> createState() => _BoxShipForShipState();
}

class _BoxShipForShipState extends State<BoxShipForShip> {
  @override
  Widget build(BuildContext context) {
    return DailyChallenges();
  }
}

class DailyChallenges extends StatefulWidget {
  @override
  _DailyChallengesState createState() => _DailyChallengesState();
}

class _DailyChallengesState extends State<DailyChallenges> {
  // Example statuses for each day (true = completed, false = not taken)
  List<bool> statuses = List.generate(8, (index) => false); // Initialize with all challenges not taken
  List<DateTime> lastClickTimes = List.generate(8, (index) => DateTime.now()); // Store last click times

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          buildChallengeRow([0, 1, 2, 3]),
          buildChallengeRow([4, 5, 6, 7]),
        ],
      ),
    );
  }

  Widget buildChallengeRow(List<int> days) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: days.map((index) => challengeContainer("Day ${index + 1}", index)).toList(),
    );
  }

  Widget challengeContainer(String day, int index) {
    bool clicked = statuses[index];
    DateTime lastClickTime = lastClickTimes[index];

    // Check if 24 hours have passed since last click
    bool showMark = clicked || DateTime.now().difference(lastClickTime).inHours >= 24;

    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle click status and update last click time
          statuses[index] = !statuses[index];
          lastClickTimes[index] = DateTime.now();
        });

        // Navigate to a new page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPage(day: day)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, bottom: 10.0, right: 5.0),
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
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0D2755),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Union image
                  if (!showMark)
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFF2B71F), // Outline color for the CircleAvatar
                          width: 2, // Outline width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 13, // Adjust radius as needed
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          "images/Union.png",
                          scale: 1.5, // Adjust scale factor as needed to resize the image
                        ),
                      ),
                    ),
                  // Mark (check or X) displayed conditionally inside a CircleAvatar
                  if (showMark)
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: clicked ? Colors.green : Colors.red, // Outline color for the CircleAvatar
                          width: 2, // Outline width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 13, // Adjust radius as needed
                        backgroundColor: clicked ? Colors.green : Colors.transparent,
                        child: Icon(
                          clicked ? Icons.check : Icons.close,
                          color: clicked ? Colors.white : Colors.black, // Color for the check or X icon
                          size: 20,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String day;

  NewPage({required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(day),
      ),
      body: Center(
        child: Text(
          'This is the new page for $day',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

