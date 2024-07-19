// import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/switch_button.dart';
// // import 'package:memscirbe_challenge_app/screen/dropdown_list.dart';
// // import 'package:memscirbe_challenge_app/screen/switch_button.dart';

// class ListViewPageTwo extends StatefulWidget {
//   @override
//   State<ListViewPageTwo> createState() => _ListViewPageTwoState();
// }

// class _ListViewPageTwoState extends State<ListViewPageTwo> {
//   List<String> itemTypes = ['Open text'];
//   int questionCounter = 1;

//   void addItem() {
//     setState(() {
//       itemTypes.add('Open text');
//       questionCounter++;
//     });
//   }

//   void updateItemType(int index, String newType) {
//     setState(() {
//       itemTypes[index] = newType;
//     });
//   }

//   Widget buildContainer(int index, String type) {
//     switch (type) {
//       case 'Open text':
//         return buildOpenTextContainer(index + 1);
//       case 'Images':
//         return buildImageContainer(index + 1);
//       case 'Choice':
//         return buildChoiceContainer(index + 1);
//       default:
//         return buildDefaultContainer(index + 1);
//     }
//   }

//   Widget buildOpenTextContainer(int questionNumber) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         height: 200,
//         width: MediaQuery.of(context).size.width * 0.8,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color(0xFFFFFFFF),
//           border: Border.all(
//             color: Color(0xFFE4E4E4),
//             width: 1,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 15.0, left: 10),
//                   child: Container(
//                     height: 30,
//                     width: 90,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Color(0xFFFFFFFF),
//                       border: Border.all(
//                         color: Color(0xFFE4E4E4),
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Text(
//                         "Question $questionNumber",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xFF0D2755),
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 18.0,),
//                   child: Text(
//                     "Required",
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF627D98),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 3.0),
//                   child: MySwitch(),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFFFFFFF),
//                   hintText: "Why do you want to join this community",
//                   hintStyle: TextStyle(
//                     color: Color(0xFF0D2755),
//                     fontSize: 16,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     "Select type of response",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color(0xFF627D98),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 40.0),
//                   child: Container(
//                     height: 30,
//                     width: 125,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color(0xFFFFFFFF),
//                       border: Border.all(
//                         color: Color(0xFFE4E4E4),
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: DropDown(
//                         initialValue: itemTypes[questionNumber - 1],
//                         onChanged: (String newValue) {
//                           updateItemType(questionNumber - 1, newValue);
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildImageContainer(int questionNumber) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         height: 350,
//         width: MediaQuery.of(context).size.width * 0.8,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color(0xFFFFFFFF),
//           border: Border.all(
//             color: Color(0xFFE4E4E4),
//             width: 1,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Flexible(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Container(
//                       height: 35,
//                       width: 95,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Color(0xFFFFFFFF),
//                         border: Border.all(
//                           color: Color(0xFFE4E4E4),
//                           width: 1,
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Text(
//                           "Question $questionNumber",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xFF0D2755),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5.0,),
//                     child: Text(
//                       "Required",
//                       style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF627D98),
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 3.0),
//                     child: MySwitch(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFFFFFFF),
//                   hintText: "Why do you want to join this community",
//                   hintStyle: TextStyle(
//                     color: Color(0xFF0D2755),
//                     fontSize: 16,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     "Select type of response",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color(0xFF627D98),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 40.0),
//                   child: Container(
//                     height: 30,
//                     width: 125,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color(0xFFFFFFFF),
//                       border: Border.all(
//                         color: Color(0xFFE4E4E4),
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: DropDown(
//                         initialValue: itemTypes[questionNumber - 1],
//                         onChanged: (String newValue) {
//                           updateItemType(questionNumber - 1, newValue);
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Text(
//                 "Upload an image as an evidence",
//                 style: TextStyle(fontSize: 16, color: Color(0xFF0D2755)),
//               ),
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: ImageUploadAvatar(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     "Add image (optional)",
//                     style: TextStyle(fontSize: 16, color: Color(0xFF757575)),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildChoiceContainer(int questionNumber) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         height: 450,
//         width: MediaQuery.of(context).size.width * 0.8,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color(0xFFFFFFFF),
//           border: Border.all(
//             color: Color(0xFFE4E4E4),
//             width: 1,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Flexible(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Container(
//                       height: 35,
//                       width: 90,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Color(0xFFFFFFFF),
//                         border: Border.all(
//                           color: Color(0xFFE4E4E4),
//                           width: 1,
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text(
//                           "Question $questionNumber",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xFF0D2755),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5.0,),
//                     child: Text(
//                       "Required",
//                       style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF627D98),
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 3.0),
//                     child: MySwitch(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFFFFFFF),
//                   hintText: "Why do you want to join this community",
//                   hintStyle: TextStyle(
//                     color: Color(0xFF0D2755),
//                     fontSize: 16,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Color(0xFFE4E4E4),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Text(
//                     "Select type of response",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color(0xFF627D98),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 40.0),
//                   child: Container(
//                     height: 30,
//                     width: 125,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color(0xFFFFFFFF),
//                       border: Border.all(
//                         color: Color(0xFFE4E4E4),
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: DropDown(
//                         initialValue: itemTypes[questionNumber - 1],
//                         onChanged: (String newValue) {
//                           updateItemType(questionNumber - 1, newValue);
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             // Option 1

//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 10.0, top: 10.0, bottom: 10.0, right: 5),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     child: TextField(
//                       maxLines: null,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                         filled: true,
//                         fillColor: Color(0xFFFFFFFF),
//                         hintText: "Option 1",
//                         hintStyle: TextStyle(
//                           color: Color(0xFF627D98),
//                           fontSize: 16,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFDBDBDB),
//                             width: 1,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         disabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedErrorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SvgPicture.asset("images/trash-2.svg"),
//               ],
//             ),

//             // Option 2

//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 10.0, top: 10.0, bottom: 10.0, right: 5),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     child: TextField(
//                       maxLines: null,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                         filled: true,
//                         fillColor: Color(0xFFFFFFFF),
//                         hintText: "Option 2",
//                         hintStyle: TextStyle(
//                           color: Color(0xFF627D98),
//                           fontSize: 16,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFDBDBDB),
//                             width: 1,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         disabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedErrorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SvgPicture.asset("images/trash-2.svg"),
//               ],
//             ),

//             // Option 3

//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 10.0, top: 10.0, bottom: 10.0, right: 5),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     child: TextField(
//                       maxLines: null,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                         filled: true,
//                         fillColor: Color(0xFFFFFFFF),
//                         hintText: "Option 3",
//                         hintStyle: TextStyle(
//                           color: Color(0xFF627D98),
//                           fontSize: 16,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFDBDBDB),
//                             width: 1,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         disabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedErrorBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Color(0xFFE4E4E4),
//                             // width: 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SvgPicture.asset("images/trash-2.svg"),
//               ],
//             ),

//             // Add More Option

//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
//               child: GestureDetector(
//                 child: Container(
//                   height: 30,
//                   width: 110,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Color(0xFFD9D9D9),
//                     border: Border.all(
//                       color: Color(0xFFE4E4E4),
//                       width: 1,
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(Icons.add),
//                       Text(
//                         "Add option",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xFF0D2755),
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildDefaultContainer(int questionNumber) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         height: 100,
//         width: MediaQuery.of(context).size.width * 0.8,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Color(0xFFFFFFFF),
//           border: Border.all(
//             color: Color(0xFFE4E4E4),
//             width: 1,
//           ),
//         ),
//         child: Center(
//           child: Text(
//             "Question $questionNumber - Default container",
//             style: TextStyle(
//               fontSize: 16,
//               color: Color(0xFF0D2755),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color(0xFFF5F6F7),
//         child: ListView.builder(
//           itemCount: itemTypes.length,
//           itemBuilder: (BuildContext context, int index) {
//             return buildContainer(index, itemTypes[index]);
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: addItem,
//         child: Icon(
//           Icons.add,
//           size: 30,
//         ),
//         backgroundColor: Color(0xFFFF9C2A),
//         foregroundColor: Color(0xFFFFFFFF),
//         shape: CircleBorder(),
//       ),
//     );
//   }
// }

// class DropDown extends StatefulWidget {
//   final Function(String) onChanged;
//   final String initialValue;

//   const DropDown(
//       {Key? key, required this.onChanged, required this.initialValue})
//       : super(key: key);

//   @override
//   State<DropDown> createState() => _DropDownState();
// }

// class _DropDownState extends State<DropDown> {
//   late String dropdownValue;

//   @override
//   void initState() {
//     super.initState();
//     dropdownValue = widget.initialValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         icon: Icon(Icons.keyboard_arrow_down_outlined),
//         iconSize: 24,
//         elevation: 16,
//         underline: Container(),
//         onChanged: (String? newValue) {
//           if (newValue != null) {
//             setState(() {
//               dropdownValue = newValue;
//             });
//             widget.onChanged(newValue);
//           }
//         },
//         items: <String>['Open text', 'Images', 'Choice']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(
//               value,
//               style: TextStyle(
//                 color: Color(0xFF828282),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
