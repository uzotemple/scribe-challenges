import 'package:flutter/material.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class DropDown extends StatefulWidget {
  final Function(String) onChanged;
  final String initialValue;

  const DropDown({Key? key, required this.onChanged, required this.initialValue})
      : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownvalue = "Select";
   late String dropdownValue;

   @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down_outlined),
        iconSize: 24,
        elevation: 16,
        underline: Container(),
        onChanged: (String? newValue){
          setState(() {
            dropdownvalue = newValue!;
            
          });
          widget.onChanged(newValue!);
        },
        items: [DropdownMenuItem<String>(
          value: "Select",
          child: Text("Select",style: TextStyle(color: Color(0xFF828282)),),
          ),

          DropdownMenuItem<String>(
          value: "Open text",
          child: Text("Open text",style: TextStyle(color: Color(0xFF828282)),),
          ),

          DropdownMenuItem<String>(
          value: "Images",
          child: Text("Images", style: TextStyle(color: Color(0xFF828282)),),
          ),

          DropdownMenuItem<String>(
          value: "Choice",
          child: Text("Choice",style: TextStyle(color: Color(0xFF828282)),),
          ),


          ],
        ),
        


    );
  }
}


// class ListViewPage extends StatefulWidget {
//   @override
//   State<ListViewPage> createState() => _ListViewPageState();
// }

// class _ListViewPageState extends State<ListViewPage> {
//   // String _selectedResponseType = "Open text"; 
//   bool showAdditionalWidgets = false;// Default value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Text("Select type of response: "),
//                 DropDown(
//                   onChanged: (String newValue) {
//                     setState(() {
//                       // _selectedResponseType = newValue;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//           // Display different widgets based on selected option
          
//             // Text("Open Text Response"),
//             Container(
//                 height: 200,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xFFFFFFFF),
//                   border: Border.all(
//                     color: Color(0xFFE4E4E4),
//                     width: 1,
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 15.0, left: 10),
//                           // First Container
//                           child: Container(
//                             height: 30,
//                             width: 90,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Color(0xFFFFFFFF),
//                               border: Border.all(
//                                 color: Color(0xFFE4E4E4),
//                                 width: 1,
//                               ),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(5.0),
//                               child: Text(
//                                 "Question 1",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xFF0D2755),
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 12.0, top: 15.0, right: 12.0, bottom: 8.0),
//                           child: Text(
//                             "Required",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color(0xFF627D98),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         MySwitch(),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 10.0, top: 10.0, bottom: 10.0, right: 5),
//                       child: Container(
//                         width: 350,
//                         child: TextField(
//                           maxLines: null,
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Color(0xFFFFFFFF),
//                             hintText: "Why do you want to join this community",
//                             hintStyle: TextStyle(
//                               color: Color(0xFF0D2755),
//                               fontSize: 16,
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                 color: Color(0xFFE4E4E4),
//                               ),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                 color: Color(0xFFE4E4E4),
//                               ),
//                             ),
//                             disabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                 color: Color(0xFFE4E4E4),
//                               ),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                 color: Color(0xFFE4E4E4),
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(
//                                 color: Color(0xFFE4E4E4),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "Select type of response",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Color(0xFF627D98),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 12.0, left: 10),
//                           child: Container(
//                             height: 35,
//                             width: 150,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Color(0xFFFFFFFF),
//                               border: Border.all(
//                                 color: Color(0xFFE4E4E4),
//                                 width: 1,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
         
//             // Text("Image Response"),

//             Padding(
//                   padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
//                   child: Container(
//                     height: 160,
//                     width: 370,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color(0xFFFFFFFF),
//                       border: Border.all(
//                         color: Color(0xFFE4E4E4),
//                         width: 1,
//                       ),
//                     ),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Flexible(
//                             child: Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(10),
//                                   child: Text(
//                                     "Upload an image as an evidence",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         color: Color(0xFF0D2755)),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: Icon(Icons.more_vert),
//                                 )
//                               ],
//                             ),
//                           ),
                          
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: ImageUploadAvatar(),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: Text(
//                                   "Add image (optional)",
//                                   style: TextStyle(
//                                       fontSize: 16, color: Color(0xFF757575)),
//                                 ),
//                               )
//                             ],
//                           )
//                         ]),
//                   ),
//                 ),

          
//       ]),
//     );
//   }
// }
