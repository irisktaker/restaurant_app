// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'constants/custom_elevated_button.dart';
import 'constants/custom_text_button.dart';
import 'constants/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? usernameController = TextEditingController();
    TextEditingController? passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFF474747),
              ),
            ),
            const Spacer(flex: 5),
            buildTextField(
              controller: usernameController,
              text: 'Username',
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            buildTextField(
              controller: passwordController,
              text: 'Password',
              inputType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            const Spacer(flex: 1),
            buildElevatedButton(
              onPressed: () => print('hi there'),
              btnText: 'Login',
            ),
            const SizedBox(height: 30),
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(
                  text: 'Google',
                  onPressed: () => print('Google'),
                  color: Colors.pink,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 1,
                    height: 28,
                    color: Colors.grey,
                  ),
                ),
                buildTextButton(
                  text: 'Facebook',
                  onPressed: () => print('Facebook'),
                  color: Colors.blue.shade900,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 1,
                    height: 28,
                    color: Colors.grey,
                  ),
                ),
                buildTextButton(
                  text: 'Twitter',
                  onPressed: () => print('Twitter'),
                  color: Colors.blue,
                ),
              ],
            ),
            const Spacer(flex: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTextButton(
                  text: 'Forgot Password',
                  onPressed: () => print('Forgot Password'),
                  color: Colors.grey,
                ),
                buildTextButton(
                  text: 'Create new account',
                  onPressed: () => print('Create new account'),
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
