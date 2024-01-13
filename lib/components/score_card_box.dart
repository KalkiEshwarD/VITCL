import 'package:flutter/material.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/constants.dart';
import 'package:vitcl/constants/text_sizes.dart';

class ScoreCard extends StatelessWidget {
  final String? title;
  final String userID;

  late final String name;
  late final double blitzRating;
  late final double bulletRating;
  late final int vitclRank;
  late final DateTime updatedOn;

  void _fetchStats({required userID}) {}

  ScoreCard({
    super.key,
    this.title,
    required this.userID,
  }) {
    //TODO: Fetch statistics
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: screenWidth(context),
        height: 250,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(
              //TODO: Edit name to be that of player
              (title == null) ? 'Stats for name' : title!,
              style: const TextStyle(
                fontSize: h1,
              ),
            ),
            Text(
              'UserID: $userID',
              style: const TextStyle(
                fontSize: h3,
              ),
            ),
            // Text('Blitz Rating:   $blitzRating'),
            // Text('Bullet Rating:  $bulletRating'),
            // Text('VITCL Rank:     $vitclRank'),
          ],
        ),
      ),
    );
  }
}
