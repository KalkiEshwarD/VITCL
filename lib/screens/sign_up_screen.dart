import 'package:flutter/material.dart';
import 'package:vitcl/components/my_text_field.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/constants.dart';
import 'package:vitcl/constants/routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
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
                    'Welcome! Let\'s create an account for you!',
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
                const SizedBox(height: 5),
                MyTextField(
                  controller: _confirmPassword,
                  hintText: 'Enter your password here again...',
                  labelText: 'Confirm Password',
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
                    'Sign up',
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
                    //TODO implement sign up with google
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
                    'Sign up with Google',
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
                    'Sign up with Apple',
                    style: TextStyle(color: black),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      GestureDetector(
                        onTap: () {
                          //TODO: Setup verified phone number and email view

                          Navigator.pushNamedAndRemoveUntil(
                              context, signInScreen, (route) => false);
                        },
                        child: const Text(' Sign in now',
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
