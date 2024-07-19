import 'package:flutter/material.dart';
import 'package:memscirbe_challenge_app/screen/list_add_option.dart';
// import 'package:memscirbe_challenge_app/screen/list_view_two.dart';
// import 'package:flutter/widgets.dart';
// import 'package:memscirbe_challenge_app/screen/listview_reporttemplate.dart';
// import 'package:memscirbe_challenge_app/screen/testing_listview.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:memscirbe_challenge_app/screen/dropdown_list.dart';
// import 'package:memscirbe_challenge_app/screen/switch_button.dart';

class CreateReport extends StatefulWidget {
  const CreateReport({super.key});

  @override
  State<CreateReport> createState() => _CreateReportState();
}

class _CreateReportState extends State<CreateReport> {
  void onCreatereport() {
    Navigator.pushNamed(context, "/oncreatedchallenge");
  }

  void onCreatenewchallenge2() {
    Navigator.pushNamed(context, "/oncreatenewchallenge");
  }

  void backtocreatenewchallenge() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        titleSpacing: 0,
        title: Text(
          "Create Report Template",
          style: TextStyle(
              color: Color(0xFF0D2755),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: GestureDetector(
            onTap: () {
              backtocreatenewchallenge();
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: onCreatereport,
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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: ListViewPageTwo()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
