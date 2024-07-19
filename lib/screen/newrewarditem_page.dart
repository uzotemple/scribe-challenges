import 'package:flutter/material.dart';
import 'package:memscirbe_challenge_app/screen/image_picker.dart';

class NewRewardItem extends StatefulWidget {

  // final TabController tabController;

  const NewRewardItem({super.key});

  @override
  State<NewRewardItem> createState() => _NewRewardItemState();
}

class _NewRewardItemState extends State<NewRewardItem> {

  // void onNewRewardItem() {
  //   Navigator.pop(context);
  // }

  void onNewRewardItem() {
    Navigator.pushNamed(context, "/onapplelaptop");
  }

  void backtochallenge() {
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        titleSpacing: 0,
        title: Text(
          "New Reward Item",
          style: TextStyle(
              color: Color(0xFF0D2755),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),

        // centerTitle: false,

        leading: GestureDetector(
          onTap: backtochallenge,
          child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                onNewRewardItem();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
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
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F7),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ImageUploadWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 10.0),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "Reward Item",
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
                      // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
        
        
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "Description of item",
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
                        contentPadding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                      ),
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 15.0, right: 15.0),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: "Cost in Points",
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
                ])),
      ),
    );
  }
}
