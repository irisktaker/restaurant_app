// ignore_for_file: avoid_print

///
/// Check Full Name: RegExp(r'^[a-z A-Z]+$')
/// Check Phone Number: RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
/// https://www.fluttercampus.com/guide/91/how-to-validate-form-textfield-values-flutter/#dart-regex-pattern-to-check-email-address

import 'package:flutter/material.dart';
import 'package:restaurant/custom_widgets/custom_elevated_button.dart';
import 'package:restaurant/custom_widgets/custom_text_button.dart';
import 'package:restaurant/custom_widgets/custom_text_field.dart';

// ignore: must_be_immutable
class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}
class _CreateAccountScreenState extends State<CreateAccountScreen> {
  ///
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPassHidden = true;
  bool _isConfirmPassHidden = true;

  bool _nameValidate = false,
      _emailValidate = false,
      _passValidate = false,
      _confirmPassValidate = false;

  bool? validation() {
    _nameController.text.isEmpty ? _nameValidate = true : _nameValidate = false;
    _emailController.text.isEmpty
        ? _emailValidate = true
        : _emailValidate = false;
    _passwordController.text.isEmpty
        ? _passValidate = true
        : _passValidate = false;
    _confirmPasswordController.text.isEmpty
        ? _confirmPassValidate = true
        : _confirmPassValidate = false;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        body: SizedBox(
          height: size.height,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
            child: ListView(
              children: [
                const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF474747),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Column(
                  children: [
                    buildTextField(
                      controller: _nameController,
                      text: 'Name',
                      inputType: TextInputType.name,
                      errorText: _nameValidate ? 'Name Can\'t Be Empty' : null,
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      controller: _emailController,
                      text: 'Email',
                      inputType: TextInputType.emailAddress,
                      errorText:
                          _emailValidate ? 'Email Can\'t Be Empty' : null,
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      controller: _passwordController,
                      text: 'Password',
                      inputType: TextInputType.visiblePassword,
                      errorText:
                          _passValidate ? 'Password Can\'t Be Empty' : null,
                      obscureText: _isPassHidden,
                      suffixIcon: IconButton(
                        onPressed: () =>
                            setState(() => _isPassHidden = !_isPassHidden),
                        icon: _isPassHidden
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                    const SizedBox(height: 16),
                    buildTextField(
                      controller: _confirmPasswordController,
                      text: 'Confirm Password',
                      inputType: TextInputType.visiblePassword,
                      errorText: _confirmPassValidate
                          ? 'Password Can\'t Be Empty'
                          : null,
                      obscureText: _isConfirmPassHidden,
                      suffixIcon: IconButton(
                        onPressed: () => setState(
                          () => _isConfirmPassHidden = !_isConfirmPassHidden,
                        ),
                        icon: _isConfirmPassHidden
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                buildElevatedButton(
                  onPressed: () {
                    setState(() {
                      validation();
                    });
                  },
                  btnText: 'Create Account',
                  colors: [const Color(0xFFF46186), const Color(0xFFEE87D7)],
                ),
                SizedBox(height: size.height * 0.05),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
