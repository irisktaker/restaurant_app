// ignore_for_file: avoid_print, valid_regexps, must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:restaurant/screens/create_account/create_account_screen.dart';
import 'package:restaurant/screens/forget_password/forget_password_screen.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';
import 'package:restaurant/utils/buttons/custom_text_button.dart';
import 'package:restaurant/utils/text_field/custom_text_field.dart';


import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController? _usernameController = TextEditingController();
  final TextEditingController? _passwordController = TextEditingController();
  // alphanumeric and _-=@,.;
  static final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('screen taped');
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                controller: _usernameController,
                text: 'Username',
                inputType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              buildTextField(
                controller: _passwordController,
                text: 'Password',
                inputType: TextInputType.visiblePassword,
                obscureText: _isHidden,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: _isHidden
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 16.0),
                child: Text(
                  validateLoginFieldText(),
                  style: TextStyle(
                      color: validateLoginFieldColor(validateLoginFieldText())),
                ),
              ),
              const Spacer(flex: 1),
              buildElevatedButton(
                onPressed: () {
                  print('hi there');
                  validateLoginField()
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        )
                      : null;
                },
                btnText: 'Login',
                colors: validateLoginField()
                    ? [const Color(0xFFF46186), const Color(0xFFEE87D7)]
                    : [
                        const Color.fromARGB(255, 119, 118, 118),
                        const Color.fromARGB(255, 202, 188, 199)
                      ],
              ),
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
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.red,
                          ],
                        ),
                      ),
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
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.red,
                          ],
                        ),
                      ),
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
                    onPressed: () {
                      print('Forgot Password');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen(),
                        ),
                      );
                    },
                    color: Colors.grey,
                  ),
                  buildTextButton(
                    text: 'Create new account',
                    onPressed: () {
                      print('Create new account');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateAccountScreen(),
                        ),
                      );
                    },
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateLoginField() {
    // if (_usernameController!.text.isEmpty ||
    //     (_passwordController!.text.isEmpty)) {
    //   return false;
    // }
    if (_usernameController!.text.isEmpty &&
        _passwordController!.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  String validateLoginFieldText() {
    if (_usernameController!.text.isNotEmpty &&
        _passwordController!.text.isNotEmpty) {
      return "Correct User Name & Password";
    } else if (_usernameController!.text.isEmpty ||
        _passwordController!.text.isEmpty) {
      return "";
    } else {
      return "Wrong User Name & Password";
    }
  }

  Color validateLoginFieldColor(String msg) {
    if (msg == "Correct User Name & Password") {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
