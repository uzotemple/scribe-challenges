import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:memscirbe_challenge_app/screen/dropdown_list.dart';
import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class ListViewPageTest extends StatefulWidget {
  @override
  State<ListViewPageTest> createState() => _ListViewPageTestState();
}

class _ListViewPageTestState extends State<ListViewPageTest> {
  String _selectedResponseType = "Open text";
  List<Widget> items = [];
  int questionCounter = 1;

  void addItem(String type) {
    setState(() {
      // items.clear();
      Widget newItem;
      switch (type) {
        case 'Open text':
          newItem = buildOpenTextContainer(questionCounter);
          break;
        case 'Images':
          newItem = buildImageContainer(questionCounter);
          break;
        case 'Choice':
          newItem = buildChoiceContainer(questionCounter);
          break;
        default:
          newItem = buildDefaultContainer(questionCounter);
      }
      items.add(newItem);
      questionCounter++;
    });
  }

  Widget buildOpenTextContainer(int questionCounter) {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10),
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
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 10),
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
              ],
            ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropDown(
                    onChanged: (String newValue) {
                      setState(() {
                        _selectedResponseType = newValue;
                        addItem(_selectedResponseType);
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );



    
  }

  Widget buildImageContainer(int questionCounter) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10),
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
                        "Question 2",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0D2755),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 10),
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
              ],
            ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropDown(
                    onChanged: (String newValue) {
                      setState(() {
                        _selectedResponseType = newValue;
                        addItem(_selectedResponseType);
                      });
                    },
                  ),
                ),
              ],
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Upload an image as an evidence",
                      style: TextStyle(fontSize: 16, color: Color(0xFF0D2755)),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Icon(Icons.more_vert),
                  // ),
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

  Widget buildChoiceContainer(int questionCounter) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 450,
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
                        "Question 3",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF0D2755),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 15.0, bottom: 12.0),
                  child: Text(
                    "Required",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF627D98),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                MySwitch(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 5),
              child: Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 10),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 10),
                  // First Container
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
                            addItem(_selectedResponseType);
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Option 1
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0, right: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "  Option 1",
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
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset("images/trash-2.svg"),
              ],
            ),

            // Option 2

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0, right: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "  Option 2",
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
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset("images/trash-2.svg"),
              ],
            ),

            // Option 3

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0, right: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "  Option 3",
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
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset("images/trash-2.svg"),
              ],
            ),

            // Add Option button

            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
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
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDefaultContainer(int questionCounter) {
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
            "Default container",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0D2755),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F6F7),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addItem(_selectedResponseType);
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

class DropDown extends StatefulWidget {
  final Function(String) onChanged;

  const DropDown({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownvalue = "Select";

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
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
          widget.onChanged(newValue!);
        },
        items: [
          DropdownMenuItem<String>(
            value: "Select",
            child: Text("Select"),
          ),
          DropdownMenuItem<String>(
            value: "Open text",
            child: Text("Open text"),
          ),
          DropdownMenuItem<String>(
            value: "Images",
            child: Text("Images"),
          ),
          DropdownMenuItem<String>(
            value: "Choice",
            child: Text("Choice"),
          ),
        ],
      ),
    );
  }
}
