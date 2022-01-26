// ignore_for_file: avoid_print, valid_regexps, must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:restaurant/screens/create_account/create_account_screen.dart';
import 'package:restaurant/screens/forget_password/forget_password_screen.dart';
import 'package:restaurant/screens/login/login_bloc.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';
import 'package:restaurant/utils/buttons/custom_text_button.dart';
import 'package:restaurant/utils/text_field/custom_text_field.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginScreenBloc _bloc = LoginScreenBloc();

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
                controller: _bloc.usernameController,
                text: 'Username',
                inputType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              buildTextField(
                controller: _bloc.passwordController,
                text: 'Password',
                inputType: TextInputType.visiblePassword,
                obscureText: _bloc.isHidden,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: _bloc.isHidden
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 16.0),
                child: Text(
                  _bloc.validateLoginFieldText(),
                  style: TextStyle(
                      color: _bloc.validateLoginFieldColor(
                          _bloc.validateLoginFieldText())),
                ),
              ),
              const Spacer(flex: 1),
              buildElevatedButton(
                onPressed: () {
                  print('hi there');
                  _bloc.validateLoginField(_bloc.usernameController!.text,
                          _bloc.passwordController!.text)
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        )
                      : null;
                },
                btnText: 'Login',
                colors: _bloc.validateLoginField(_bloc.usernameController!.text,
                        _bloc.passwordController!.text)
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
}
