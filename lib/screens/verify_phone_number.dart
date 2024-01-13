import 'package:flutter/material.dart';
import 'package:vitcl/constants/text_sizes.dart';

class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              'Let\'s verify your phone number!',
              style: TextStyle(
                fontSize: h1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
