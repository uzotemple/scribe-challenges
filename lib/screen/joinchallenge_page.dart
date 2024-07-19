import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class JoinChallenge extends StatefulWidget {
  const JoinChallenge({super.key});

  @override
  State<JoinChallenge> createState() => _JoinChallengeState();
}

class _JoinChallengeState extends State<JoinChallenge> {

   void onJoinchallenge() {
    Navigator.pushNamed(context, "/onshop30for30");
  }

  void backtojoinchallenge() {
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),

        // centerTitle: false,

        leading: GestureDetector(
          onTap: () {
            backtojoinchallenge();
          },
          child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: onJoinchallenge,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFF0D2755),
                ),
              ),
              child: Text(
                "Join this Challenge",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),

      // First image

      body: Container(
        color: Color(0XFFF5F6F7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("images/Rectangleheading.png"),
        
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10, bottom: 10.0, right: 10.0),
              child: Text(
                "Ship 30 for 30",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF254C73),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEBF2FF),
                  border: Border.all(
                    color: Color(0xFFE4E4E4),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today_outlined),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Wed, Aug 2",
                              style: TextStyle(fontSize: 14),
                            ),
                            Image.asset("images/Line163.png"),
                            Text(
                              "Wed, Aug 2",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "   18:00 - 20:00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF828282),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "18:00 - 20:00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF828282),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    // You will earn container
        
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFECBB),
                          border: Border.all(
                            color: Color(0xFFE4E4E4),
                            width: 1,
                          ),
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
                                "You will earn 10 points if you complete this challenge",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF0D2755),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
        
        
                  ],
                ),
              ),
            ),
        
            // Second Container
        
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
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
                          left: 10.0, right: 10.0, top: 20.0),
                      child: Text(
                        "About Challenge",
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
      ),
    );
  }
}
