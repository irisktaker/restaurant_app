// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:restaurant/custom_widgets/custom_elevated_button.dart';
import 'package:restaurant/custom_widgets/custom_text_button.dart';
import 'package:restaurant/custom_widgets/custom_text_field.dart';

import 'forget_password_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('screen taped');
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFF474747),
                ),
              ),
              const Spacer(flex: 5),
              SizedBox(
                height: 250,
                child: ListView(
                  children: [
                    buildTextField(
                      // controller: ,
                      text: 'Name',
                      inputType: TextInputType.name,
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      // controller: ,
                      text: 'Email',
                      inputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      // controller: ,
                      text: 'Username',
                      inputType: TextInputType.name,
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      // controller: ,
                      text: 'Password',
                      inputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Spacer(flex: 1),
              buildElevatedButton(
                onPressed: () {
                  print('hi there');

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const (),
                  //   ),
                  // );
                },
                btnText: 'Create Account',
                colors: [const Color(0xFFF46186), const Color(0xFFEE87D7)],
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
            ],
          ),
        ),
      ),
    );
  }
}
