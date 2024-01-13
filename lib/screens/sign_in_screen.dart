import 'package:flutter/material.dart';
import 'package:vitcl/components/my_text_field.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/constants.dart';
import 'package:vitcl/constants/routes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'VITCL',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Text(
                    'Welcome back, you\'ve been missed!',
                  ),
                ),
                const SizedBox(height: 80),
                MyTextField(
                  controller: _email,
                  hintText: 'name@example.com',
                  labelText: 'Email',
                  keyboard: TextInputType.emailAddress,
                ),
                const SizedBox(height: 5),
                MyTextField(
                  controller: _password,
                  hintText: 'Enter your password here...',
                  labelText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    if (context.mounted) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, homeScreen, (route) => false);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: const Size(signInTextBoxSize, 50),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: signInTextBoxSize,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Text(
                          'or',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    //TODO: On Pressed
                    throw UnimplementedError();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: const Size(signInTextBoxSize, 50),
                  ),
                  child: const Text(
                    'Sign in with Google',
                    style: TextStyle(color: black),
                  ),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    //TODO: On Pressed
                    throw UnimplementedError();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    fixedSize: const Size(signInTextBoxSize, 50),
                  ),
                  child: const Text(
                    'Sign in with Apple',
                    style: TextStyle(color: black),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member yet?'),
                      GestureDetector(
                        onTap: () {
                          //TODO: Set up verified phone number and email conditions
                          Navigator.pushNamedAndRemoveUntil(
                              context, signUpScreen, (route) => false);
                        },
                        child: const Text(' Sign up now',
                            style: TextStyle(color: Colors.deepPurple)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
