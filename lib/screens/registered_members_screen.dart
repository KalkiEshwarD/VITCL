import 'package:flutter/material.dart';
import 'package:vitcl/components/drawers.dart';
import 'package:vitcl/components/score_bar.dart';

class RegisteredMembersScreen extends StatefulWidget {
  const RegisteredMembersScreen({super.key});

  @override
  State<RegisteredMembersScreen> createState() =>
      _RegisteredMembersScreenState();
}

class _RegisteredMembersScreenState extends State<RegisteredMembersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registered Members'),
        ),
        drawer: primaryDrawer(context),
        body: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: ListView(
            children: [
              ScoreBar(userID: 'u1'),
              ScoreBar(userID: 'u2'),
              ScoreBar(userID: 'u3')
            ],
          ),
        ),
      ),
    );
  }
}
