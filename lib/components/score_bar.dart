import 'package:flutter/material.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/constants.dart';
import 'package:vitcl/constants/text_sizes.dart';

class ScoreBar extends StatelessWidget {
  final String? title;
  final String userID;

  late final String name;
  late final double blitzRating;
  late final double bulletRating;
  late final int vitclRank;
  late final DateTime updatedOn;

  void _fetchStats({required userID}) {}

  ScoreBar({
    super.key,
    this.title,
    required this.userID,
  }) {
    //TODO: Fetch statistics
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: GestureDetector(
          onTap: () {
            //TODO: On tap
          },
          child: Container(
            width: screenWidth(context),
            height: 55,
            // color: white,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Center(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    //TODO: Change name to dynamic
                    'Name: $userID',
                    style: const TextStyle(
                      fontSize: h2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
