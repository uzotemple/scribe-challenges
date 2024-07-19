// import 'dart:js_util';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:memscirbe_challenge_app/screen/dropdown_list.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  String _selectedResponseType ="Open text";
  List<Widget> items = [];

  // int _clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F6F7),
        child: ListView.builder(
          itemCount: items.length, // Number of items in the list
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add(
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFE4E4E4),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 10),
                              // First Container
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                    color: Color(0xFFE4E4E4),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Question 1",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF0D2755),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 12.0,
                                top: 20.0,
                              ),
                              child: Text(
                                "Required",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF627D98),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Align(
                                  alignment: Alignment.center, child: MySwitch()),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10),
                          child: Container(
                            width: 350,
                            child: TextField(
                              maxLines: null,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFFFFFF),
                                hintText:
                                    "Why do you want to join this community",
                                hintStyle: TextStyle(
                                  color: Color(0xFF0D2755),
                                  fontSize: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFE4E4E4),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Select type of response",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF627D98),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0, left: 10),
                              child: Container(
                                height: 35,
                                width: 150,
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
                                  child: DropDown(
                                    onChanged: (String newValue) {
                                      setState(() {
                                        _selectedResponseType = newValue;
                                        print(_selectedResponseType);
                                      });
                                    }, initialValue: '',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                
                        // SizedBox(height: 20,),
                
                        // if (_selectedResponseType == "Open text")
                
                        // image conatainer
                
                        // Padding(
                        //   padding: const EdgeInsets.all(12.0),
                        //   child: Container(
                        //     height: 160,
                        //     width: 380,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(10),
                        //       color: Color(0xFFFFFFFF),
                        //       border: Border.all(
                        //         color: Color(0xFFE4E4E4),
                        //         width: 1,
                        //       ),
                        //     ),
                        //     child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //         children: [
                        //           Flexible(
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.spaceBetween,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               children: [
                        //                 Padding(
                        //                   padding: const EdgeInsets.all(10),
                        //                   child: Text(
                        //                     "Upload an image as an evidence",
                        //                     style: TextStyle(
                        //                         fontSize: 16,
                        //                         color: Color(0xFF0D2755)),
                        //                   ),
                        //                 ),
                        //                 Padding(
                        //                   padding: const EdgeInsets.all(10.0),
                        //                   child: Icon(Icons.more_vert),
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //           Row(
                        //             crossAxisAlignment: CrossAxisAlignment.center,
                        //             mainAxisAlignment: MainAxisAlignment.start,
                        //             children: [
                        //               Padding(
                        //                 padding: const EdgeInsets.all(10.0),
                        //                 child: ImageUploadAvatar(),
                        //               ),
                        //               Padding(
                        //                 padding: const EdgeInsets.all(10.0),
                        //                 child: Text(
                        //                   "Add image (optional)",
                        //                   style: TextStyle(
                        //                       fontSize: 16,
                        //                       color: Color(0xFF757575)),
                        //                 ),
                        //               ),
                        //             ],
                        //           )
                        //         ]),
                        //   ),
                        // ),
  
                      ],
                    ),
                  ),
                ),
              ),

            );
          });
        },
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
