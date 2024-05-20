import 'package:flutter/material.dart';
import 'package:memscirbe_challenge_app/screen/apple_laptop_page.dart';
import 'package:memscirbe_challenge_app/screen/challenges.dart';
import 'package:memscirbe_challenge_app/screen/createdchallenge_page.dart';
import 'package:memscirbe_challenge_app/screen/createnew_challenge.dart';
import 'package:memscirbe_challenge_app/screen/createreport_page.dart';
import 'package:memscirbe_challenge_app/screen/joinchallenge_page.dart';
import 'package:memscirbe_challenge_app/screen/newrewarditem_page.dart';
import 'package:memscirbe_challenge_app/screen/pinpostaction_page.dart';
import 'package:memscirbe_challenge_app/screen/shop30for30_page.dart';
import 'package:memscirbe_challenge_app/screen/writeevryday_page.dart';

const onChallengePage = "/onchallenge";
const onCreateNewChallengePage = "/oncreatenewchallenge";
const onCreatereportPage = "/oncreatereport";
const onCreatedchallengePage = "/oncreatedchallenge";
const onJoinChallengePage = "/onjoinchallenge";
const onShop30For30Page = "/onshop30for30";
const onWriteeverydayPage = "/onwritemevryday";
const onNewRewardItemPage = "/onnewrewarditem";
const onAppleLaptopPage = "/onapplelaptop";
const onPinpostActionPage = "/onpinpostaction";


final routes = <String, Widget Function(BuildContext)> {
  onChallengePage: (_) => Challenges(),
  onCreateNewChallengePage: (_) => CreateNewChallenge(),
  onCreatereportPage: (_) => CreateReport(),
  onCreatedchallengePage: (_) => CreatedChallenge(),
  onJoinChallengePage: (_) => JoinChallenge(),
  onShop30For30Page: (_) => Ship30for30(),
  onWriteeverydayPage: (_) => WriteEveryDay(),
  onNewRewardItemPage: (_) => NewRewardItem(),
  onAppleLaptopPage: (_) => AppleLaptop(),
  onPinpostActionPage: (_) => PinPostAction(),
};