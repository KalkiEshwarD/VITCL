import 'package:flutter/material.dart';
import 'package:vitcl/components/drawers.dart';
import 'package:vitcl/components/score_card_box.dart';
import 'package:vitcl/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: primaryDrawer(context),
        backgroundColor: grey,
        body: ScoreCard(
          userID: '',
          title: 'Your statistics',
        ),
      ),
    );
  }
}
