// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:memscirbe_challenge_app/screen/cutomized_tab.dart';
// import 'package:memscirbe_challenge_app/screen/custom_indicator.dart';
import 'package:memscirbe_challenge_app/screen/grid_view.dart';
import 'package:memscirbe_challenge_app/screen/gridview_reward.dart';
// import 'package:memscirbe_challenge_app/screen/gridview_reward.dart';
// import 'package:memscirbe_challenge_app/screen/gridview_reward.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:memscirbe_challenge_app/screen/grid_view.dart';
// import 'package:memscirbe_challenge_app/screen/grid_view.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class TabBars extends StatefulWidget {
  const TabBars({super.key});

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 1.0,
                      color: Color(0xFFE4E4E4)), // Adjust top border
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color(0xFFE4E4E4)), // Adjust bottom border
                ),
              ),
              child: TabBar(
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                tabs: [
                  CustomTab(
                    text: "Challenges",
                    isSelected: _currentIndex == 0,
                  ),
                  CustomTab(
                    text: "Learderboard",
                    isSelected: _currentIndex == 1,
                  ),
                  CustomTab(
                    text: "Rewards",
                    isSelected: _currentIndex == 2,
                  ),
                ],
                // indicator: null,
                indicator: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    // color: Color(0xFFFBD13B),
                    ),
                labelColor: Color(0xFF0D2755),
              ),
            ),

            // GridViewPage(),

            // First tab
            Container(
              width: double.maxFinite,
              height: 500,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6F7),
                            border: Border(
                              top: BorderSide(
                                  width: 1.0,
                                  color:
                                      Color(0xFFE4E4E4)), // Adjust top border
                              bottom: BorderSide(
                                  width: 1.0,
                                  color: Color(
                                      0xFFE4E4E4)), // Adjust bottom border
                            ),
                            // color: Color(0xFFF5F6F7),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 35,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFFFFECBB),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4),
                                        width: 1,
                                      )),
                                  child: Center(
                                    child: Text(
                                      "Active",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF0D2755)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFFFFFFF),
                                    border: Border.all(
                                      color: Color(0xFFE4E4E4),
                                      width: 1,
                                    )),
                                child: Center(
                                  child: Text(
                                    "Closed",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFF0D2755)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12.0, top: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // border: Border(
                                //   top: BorderSide(
                                //     width: 1.0, color: Color(0xFFE4E4E4)),
                                // ),
                                ),
                            alignment: Alignment.center,
                            // color: Color(0xFFFFFFFF),
                            height: MediaQuery.of(context).size.height,
                            // width: MediaQuery.of(context).size.width,
                            child: SizedBox.expand(child: GridViewPage()),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Text("Here is the end of the first tab"),

                  // Text("Here is the biginning of the second tab"),

                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("images/Group6335.png"),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Leaderboard",
                              style: TextStyle(
                                  color: Color(0xFF0D2755),
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 400,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                            color: Color(0xFFE4E4E4),
                            width: 1,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10.0, bottom: 10.0),
                                    child: Image.asset("images/Ellipse124.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "1st",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF226CE0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Vincent Mayaki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "22 Points",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        Image.asset("images/coins-stack.png"),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(
                                    0xFFD8D8D8), // Set the color of the line
                                thickness: 1, // Set the thickness of the line
                                height: 15, // Set the height of the line
                                indent: 8, // Set the starting point of the line
                                endIndent:
                                    8, // Set the ending point of the line
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10.0, bottom: 10.0),
                                    child: Image.asset("images/Ellipse124.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "2st",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF226CE0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Vincent Mayaki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "22 Points",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        Image.asset("images/coins-stack.png"),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(
                                    0xFFD8D8D8), // Set the color of the line
                                thickness: 1, // Set the thickness of the line
                                height: 15, // Set the height of the line
                                indent: 8, // Set the starting point of the line
                                endIndent:
                                    8, // Set the ending point of the line
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10.0, bottom: 10.0),
                                    child: Image.asset("images/Ellipse124.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "3st",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF226CE0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Vincent Mayaki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "22 Points",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        Image.asset("images/coins-stack.png"),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(
                                    0xFFD8D8D8), // Set the color of the line
                                thickness: 1, // Set the thickness of the line
                                height: 15, // Set the height of the line
                                indent: 8, // Set the starting point of the line
                                endIndent:
                                    8, // Set the ending point of the line
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10.0, bottom: 10.0),
                                    child: Image.asset("images/Ellipse124.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "4th",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF226CE0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Vincent Mayaki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "22 Points",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        Image.asset("images/coins-stack.png"),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(
                                    0xFFD8D8D8), // Set the color of the line
                                thickness: 1, // Set the thickness of the line
                                height: 15, // Set the height of the line
                                indent: 8, // Set the starting point of the line
                                endIndent:
                                    8, // Set the ending point of the line
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10.0, bottom: 10.0),
                                    child: Image.asset("images/Ellipse124.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "5th",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF226CE0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Vincent Mayaki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "22 Points",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF102A43),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        Image.asset("images/coins-stack.png"),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(
                                    0xFFD8D8D8), // Set the color of the line
                                thickness: 1, // Set the thickness of the line
                                height: 15, // Set the height of the line
                                indent: 8, // Set the starting point of the line
                                endIndent:
                                    8, // Set the ending point of the line
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // End of the second tab

                  // Biginning of the third tab

                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 22.0, top: 10.0, right: 20.0),
                              child: Text(
                                "Rewards",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFF0D2755),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 10.0,
                                  top: 5.0),
                              child: Container(
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFECBB),
                                  // border: Border.all(
                                  //   color: Color(0xFFE4E4E4),
                                  //   width: 1,
                                  // ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "images/coinsstack1.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "You have 10 points to redeem",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF0D2755),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // The two containers under the "You have 10 points to redeem"

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0,),
                                child: Container(
                                  child: GridViewRewardPage(),
                                ),
                              ),
                            ),

                            
                          ],
                        ),
                      ),
                    ],
                  ),

                  // End of the third tab
                ],
              ),
            ),
          ],
        ),
      ),
    ])));
    // floatingActionButton: FloatingActionButton(
    //   onPressed: (){},
    //   child: Icon(
    //     Icons.add,
    //     size: 30,
    //   ),
    //   backgroundColor: Color(0xFFFF9C2A),
    //   foregroundColor: Color(0xFFFFFFFF),
    //   shape: CircleBorder(),
    // ),
  }
}
