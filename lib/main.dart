import 'package:flutter/material.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/routes.dart';
import 'package:vitcl/screens/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: const SignInScreen(),
        routes: routesMap,
        theme: ThemeData(
          scaffoldBackgroundColor: grey,
        ),
      ),
    );
  }
}
