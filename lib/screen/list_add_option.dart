

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
import 'package:memscirbe_challenge_app/screen/switch_button.dart';
// import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class ListViewPageTwo extends StatefulWidget {
  @override
  State<ListViewPageTwo> createState() => _ListViewPageTwoState();
}

class _ListViewPageTwoState extends State<ListViewPageTwo> {
  List<String> itemTypes = ['Open text'];
  List<List<String>> options = [[]];
  int questionCounter = 1;

  void addItem() {
    setState(() {
      itemTypes.add('Open text');
      options.add([]);
      questionCounter++;
    });
  }

  void updateItemType(int index, String newType) {
    setState(() {
      itemTypes[index] = newType;
      if (newType != 'Choice') {
        options[index] = [];
      }
    });
  }

  void addOption(int questionIndex) {
    setState(() {
      options[questionIndex].add('Option ${options[questionIndex].length + 1}');
    });
  }

  void removeOption(int questionIndex, int optionIndex) {
    setState(() {
      options[questionIndex].removeAt(optionIndex);
    });
  }

  Widget buildContainer(int index, String type) {
    switch (type) {
      case 'Open text':
        return buildOpenTextContainer(index + 1);
      case 'Images':
        return buildImageContainer(index + 1);
      case 'Choice':
        return buildChoiceContainer(index + 1, index);
      default:
        return buildDefaultContainer(index + 1);
    }
  }

  Widget buildOpenTextContainer(int questionNumber) {
    return Padding(
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
          children: [
            buildQuestionHeader(questionNumber),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  hintText: "Why do you want to join this community",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Select type of response",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF627D98),
                    ),
                  ),
                ),
                Spacer(),
                buildResponseTypeDropdown(questionNumber - 1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageContainer(int questionNumber) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 350,
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
          children: [
            buildQuestionHeader(questionNumber),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  hintText: "Why do you want to join this community",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Select type of response",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF627D98),
                    ),
                  ),
                ),
                Spacer(),
                buildResponseTypeDropdown(questionNumber - 1),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Upload an image as evidence",
                style: TextStyle(fontSize: 16, color: Color(0xFF0D2755)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageUploadAvatar(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Add image (optional)",
                    style: TextStyle(fontSize: 16, color: Color(0xFF757575)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChoiceContainer(int questionNumber, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // height: 500,
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
          children: [
            buildQuestionHeader(questionNumber),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  hintText: "Why do you want to join this community",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Select type of response",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF627D98),
                    ),
                  ),
                ),
                Spacer(),
                buildResponseTypeDropdown(questionNumber - 1),
              ],
            ),
            ...options[index].asMap().entries.map((entry) {
              int optIndex = entry.key;
              String optValue = entry.value;
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                      child: TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          hintText: optValue,
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
                  IconButton(
                    icon: SvgPicture.asset("images/trash-2.svg"),
                    onPressed: () => removeOption(index, optIndex),
                  ),
                ],
              );
            }).toList(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0, top: 5.0),
              child: GestureDetector(
                onTap: () => addOption(index),
                child: Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD9D9D9),
                    border: Border.all(
                      color: Color(0xFFE4E4E4),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      Text(
                        "Add option",
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
      ),
    );
  }

  Widget buildDefaultContainer(int questionNumber) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFFFFFF),
          border: Border.all(
            color: Color(0xFFE4E4E4),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            "Question $questionNumber - Default container",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0D2755),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildQuestionHeader(int questionNumber) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
              border: Border.all(
                color: Color(0xFFE4E4E4),
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                "Question $questionNumber",
                style: TextStyle(color: Color(0xFF0D2755),
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
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
            child: MySwitch(),
          ),
          // Text(
          //   "Type your question here",
          //   style: TextStyle(fontSize: 14, color: Color(0xFF0D2755)),
          // ),
        ],
      ),
    );
  }

  Widget buildResponseTypeDropdown(int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 30,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFFFFFF),
          border: Border.all(
            color: Color(0xFFDBDBDB),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButton<String>(
            value: itemTypes[index],
            onChanged: (newValue) {
              if (newValue != null) updateItemType(index, newValue);
            },
            items: ['Open text', 'Images', 'Choice']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF828282),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
            underline: Container(),
            icon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFFFFFFF),
      //   iconTheme: IconThemeData(color: Color(0xFF0D2755)),
      //   title: Text(
      //     'Application Form',
      //     style: TextStyle(color: Color(0xFF0D2755)),
      //   ),
      //   centerTitle: true,
      //   elevation: 0.0,
      // ),
      body: Center(
        child: ListView.builder(
          itemCount: itemTypes.length,
          itemBuilder: (context, index) {
            return buildContainer(index, itemTypes[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: Icon(
          Icons.add,
          size: 30,
        ),
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFFFF9C2A),
        shape: CircleBorder(),
      ),
    );
  }
}
