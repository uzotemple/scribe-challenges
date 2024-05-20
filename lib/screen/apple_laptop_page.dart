import 'package:flutter/material.dart';

class AppleLaptop extends StatefulWidget {
  const AppleLaptop({super.key});

  @override
  State<AppleLaptop> createState() => _AppleLaptopState();
}

class _AppleLaptopState extends State<AppleLaptop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "Apple Laptop",
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
                "Redeem",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset("images/Rectangle2596(2).png"),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Container(
              height: 200,
              width: 400,
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: Text(
                      "Apple Laptop",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF254C73),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Second text in this container

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Stainless Stel Tumbler with engraved logo of the company CEO. Stainless Stel Tumbler with engraved logo of the company CEOStainless Stel Tumbler with engraved logo of the company CEOStainless Stel Tumbler with engraved logo of the company CEO",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF254C73),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Container

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Container(
              height: 90,
              width: 400,
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 15.0),
                    child: Text(
                      "225 Points",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF226CE0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Second text in this container

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "You only have 20 points to redeem",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF627D98),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
