import 'package:flutter/material.dart';

class NewRewardItem extends StatefulWidget {
  const NewRewardItem({super.key});

  @override
  State<NewRewardItem> createState() => _NewRewardItemState();
}

class _NewRewardItemState extends State<NewRewardItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "New Reward Item",
          style: TextStyle(
              color: Color(0xFF0D2755),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),

        // centerTitle: false,

        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF0D2755),
                ),
              ),
              child: Text(
                "Create",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 238, 240),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/Draganddrop.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Reward Item",
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
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "   Description of item",
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
                      contentPadding: EdgeInsets.symmetric(vertical: 40),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Cost in Points",
                      hintStyle: TextStyle(
                        color: Color(0xFF627D98),
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFDBDBDB),
                          // width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }
}
