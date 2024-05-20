import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter/widgets.dart';
import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:memscirbe_challenge_app/screen/radio_buttonpage.dart';

class CreatedChallenge extends StatefulWidget {
  const CreatedChallenge({super.key});

  @override
  State<CreatedChallenge> createState() => _CreatedChallengeState();
}

class _CreatedChallengeState extends State<CreatedChallenge> {
  void onCreatedchallenge() {
    Navigator.pushNamed(context, "/onjoinchallenge");
  }

  void onCreatedchallenge2() {
    Navigator.pushNamed(context, "/oncreatenewchallenge");
  }

  void backtocreatedchallenge() {
    Navigator.pop(context);
  }

  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F6F7),
        leading: GestureDetector(
          onTap: () {
            backtocreatedchallenge();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          // save button on the app bar

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Save",
              style: TextStyle(
                  color: Color(0xFF0D2755),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // submit button on the app bar

          Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
            child: ElevatedButton(
              onPressed: onCreatedchallenge,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF0D2755),
                ),
              ),
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("images/AutoLayoutHorizontal.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF616161),
                                ),
                              ),
                            ),
                            Container(
                              width:
                                  1, // Adjust the width of the vertical line
                              height:
                                  20, // Adjust the height of the vertical line
                              color: Color(0xFF616161),
                              // Adjust the color of the vertical line
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5), // Add margin for spacing
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "09:24 AM",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF616161),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, left: 10, bottom: 8.0),
                          child: Container(
                            height: 30,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDBECFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "By: Jennifer Lawrence",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF0D2755),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
                // SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 10.0, bottom: 5.0),
                  child: Text(
                    "Digital Skills Acquisition",
                    style: TextStyle(
                        fontSize: 21,
                        color: Color(0xFF0D2755),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, bottom: 20.0),
                  child: Text(
                    "Brad is a corporate vice president at Microsoft leading the development of windows Azure Storage in 2006...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0D2755),
                    ),
                  ),
                ),
                    
                SvgPicture.asset("images/Line 134.svg"),
                    
                // Container after the broken lines
                    
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 15.0, bottom: 10.0),
                  child: Container(
                    height: 400,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFE4E4E4),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 12.0,
                                  right: 12.0,
                                ),
                                child: Text(
                                  "Who is the president of the United State of America",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF0D2755)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.more_vert),
                            )
                          ],
                        ),
                        Container(
                          width: 340,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFE4E4E4),
                              width: 1,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: RadioListTile<int>(
                                  title: Text("Alhaji President"),
                                  value: 1,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = value!;
                                    });
                                  }),
                            ),
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFE4E4E4),
                              width: 1,
                            ),
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: RadioListTile<int>(
                              title: Text("Bubu Rey"),
                              value: 2,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                        ),
                        Container(
                          width: 340,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFE4E4E4),
                              width: 1,
                            ),
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: RadioListTile<int>(
                              title: Text("Balablue"),
                              value: 3,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                        ),
                        Container(
                          width: 340,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFE4E4E4),
                              width: 1,
                            ),
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: RadioListTile<int>(
                              title: Text("Johnaa"),
                              value: 4,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                    
                // Second Container
                    
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
                  child: Container(
                    height: 160,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFE4E4E4),
                        width: 1,
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "Who is the president of the United State of America",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF0D2755)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.more_vert),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              )),
                            ),
                          )
                        ]),
                  ),
                ),
                    
                // Third Container
                    
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
                  child: Container(
                    height: 160,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFE4E4E4),
                        width: 1,
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "Upload an image as an evidence",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF0D2755)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.more_vert),
                                )
                              ],
                            ),
                          ),
                          
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ImageUploadAvatar(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Add image (optional)",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF757575)),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ]),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: onCreatedchallenge2,
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
