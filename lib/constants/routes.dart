import 'package:flutter/material.dart';
import 'package:vitcl/screens/home_screen.dart';
import 'package:vitcl/screens/registered_members_screen.dart';
import 'package:vitcl/screens/sign_in_screen.dart';
import 'package:vitcl/screens/sign_up_screen.dart';
import 'package:vitcl/screens/verify_phone_number.dart';

const homeScreen = '/home-screen';
const signInScreen = '/sign-in-screen';
const signUpScreen = '/sign-up-screen';
const verifyPhoneNumberScreen = '/verify-phone-number-screen';
const registeredMembersScreen = '/registered-members-screen';

Map<String, Widget Function(BuildContext)> routesMap = {
  homeScreen: (context) => const HomeScreen(),
  signInScreen: (context) => const SignInScreen(),
  signUpScreen: (context) => const SignUpScreen(),
  verifyPhoneNumberScreen: (context) => const VerifyPhoneNumber(),
  registeredMembersScreen: (context) => const RegisteredMembersScreen(),
};
