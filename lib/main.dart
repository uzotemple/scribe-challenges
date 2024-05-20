import 'package:flutter/material.dart';
// import 'package:memscirbe_challenge_app/screen/grid_view.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/radio_buttonpage.dart';
import 'package:memscirbe_challenge_app/config/routes.dart';
// import 'package:memscirbe_challenge_app/screen/new_challenges.dart';
// import 'package:memscirbe_challenge_app/screen/listview_reporttemplate.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker_avatar.dart';
// import 'package:memscirbe_challenge_app/screen/radio_buttonpage.dart';
// import 'package:memscirbe_challenge_app/screen/spinbox_page.dart';
// import 'package:memscirbe_challenge_app/time_selection.dart';
// import 'package:memscirbe_challenge_app/config/routes.dart';
// import 'package:memscirbe_challenge_app/screen/image_picker.dart';
// import 'package:memscirbe_challenge_app/time_selection.dart';
// import 'package:memscirbe_challenge_app/screen/spinbox_page.dart';
// import 'package:memscirbe_challenge_app/screen/pinpostaction_page.dart';
// import 'package:memscirbe_challenge_app/screen/apple_laptop_page.dart';
// import 'package:memscirbe_challenge_app/screen/newrewarditem_page.dart';
// import 'package:memscirbe_challenge_app/screen/writeevryday_page.dart';
// import 'package:memscirbe_challenge_app/screen/shop30for30_page.dart';
// import 'package:memscirbe_challenge_app/screen/joinchallenge_page.dart';
// import 'package:memscirbe_challenge_app/screen/createdchallenge_page.dart';
// import 'package:memscirbe_challenge_app/screen/createreport_page.dart';
// import 'package:memscirbe_challenge_app/screen/challenges.dart';
// import 'package:memscirbe_challenge_app/screen/challenges.dart';
// import 'package:memscirbe_challenge_app/screen/createnew_challenge.dart';

void main(){
  runApp(const MsbChallengefeatures());
}

class MsbChallengefeatures extends StatelessWidget {
  const MsbChallengefeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MsbChallengeFeatures App',
    debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      // home: NewChallenges(),
      initialRoute: "/onchallenge",
      routes: routes,
    );
  }
}