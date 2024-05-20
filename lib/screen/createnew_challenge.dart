// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:memscirbe_challenge_app/date_salection.dart';
import 'package:memscirbe_challenge_app/screen/dropdown_forno_ofcycle.dart';
import 'package:memscirbe_challenge_app/screen/dropdown_forrecurring.dart';
import 'package:memscirbe_challenge_app/screen/image_picker.dart';
import 'package:memscirbe_challenge_app/time_selection.dart';
// import 'package:memscirbe_challenge_app/time_selection.dart';
// import 'package:memscirbe_challenge_app/screen/spinbox_page.dart';

class CreateNewChallenge extends StatefulWidget {
  const CreateNewChallenge({super.key});

  @override
  State<CreateNewChallenge> createState() => _CreateNewChallengeState();
}

class _CreateNewChallengeState extends State<CreateNewChallenge> {
  void onCreatenewchallenge() {
    Navigator.pushNamed(context, "/oncreatereport");
  }

  void backtochallenge() {
    Navigator.pop(context);
  }
  // final PageController _controller = PageController();
  // final int _numPages = 3;
  // double _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        titleSpacing: 0,
        title: Text(
          "Create New Challenge",
          style: TextStyle(
              color: Color(0xFF0D2755),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),

        centerTitle: false,

        leading: GestureDetector(
            onTap: () {
              backtochallenge();
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
            child: ElevatedButton(
              onPressed: onCreatenewchallenge,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF0D2755),
                ),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 10.0, top: 10.0),
                child: Stack(children: [
                  ImageUploadWidget(),

                  
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    hintText: "Title",
                    hintStyle: TextStyle(
                      color: Color(0xFF627D98),
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFDBDBDB),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 15.0),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    hintText: "Description of challenge",
                    hintStyle: TextStyle(
                      color: Color(0xFF627D98),
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFDBDBDB),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFE4E4E4),
                        // width: 1,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 10.0, bottom: 5.0),
                child: Text(
                  "Start (Date when this challenge will start)",
                  style: TextStyle(fontSize: 16, color: Color(0xFF627D98)),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: DateSelectionContainer(),
                    ),
                  ),
                  VerticalDivider(
                    width: 2,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: TimePickerContainer(),
                    ),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Recurring",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF627D98),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, left: 10, right: 15.0),
                    // First Container
                    child: Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE4E4E4),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: DropDownRecuring(),
                      ),
                    ),
                  ),
                ],
              ),

              // Second Dropdowm ... No of cycle

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "No of Cycle",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF627D98),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, left: 10, right: 15.0),
                    // First Container
                    child: Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE4E4E4),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: DropDownForNoOfCycle(),
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
