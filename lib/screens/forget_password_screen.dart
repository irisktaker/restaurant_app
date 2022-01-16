// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:restaurant/shared/custom_elevated_button.dart';
import 'package:restaurant/shared/custom_text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? _forgetPasswordController = TextEditingController();

    return GestureDetector(
      onTap: () {
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
        body: Scaffold(
          body: Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0xFF474747),
                  ),
                ),
                const Spacer(flex: 5),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      buildTextField(
                        controller: _forgetPasswordController,
                        text: 'Enter Email ID / Phone Number',
                        inputType: TextInputType.name,
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 2),
                buildElevatedButton(
                    onPressed: () => print('hi there'),
                    btnText: 'Submit',
                    colors: [
                      const Color(0xFFF46186),
                      const Color(0xFFEE87D7),
                    ]),
                const Spacer(flex: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
