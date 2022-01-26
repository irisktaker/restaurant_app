import 'package:flutter/material.dart';

class LoginScreenBloc {
  final TextEditingController? usernameController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

  bool isHidden = true;

  // i did'nt use this line yet
  // alphanumeric and _-=@,.;
  static final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

  // Method to validate login based on if fields empty or not
  bool validateLoginField(String username, String password) {
    // if (_usernameController!.text.isEmpty ||
    //     (_passwordController!.text.isEmpty)) {
    //   return false;
    // }
    if (username.isEmpty && password.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  // Method to validate login based on if fields empty or not
  String validateLoginFieldText() {
    if (usernameController!.text.isNotEmpty &&
        passwordController!.text.isNotEmpty) {
      return "Correct User Name & Password";
    } else if (usernameController!.text.isEmpty ||
        passwordController!.text.isEmpty) {
      return "";
    } else {
      return "Wrong User Name & Password";
    }
  }

  // Method to change text color based on true or false
  Color validateLoginFieldColor(String msg) {
    if (msg == "Correct User Name & Password") {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }


  ///
  /// onPressed Methods
  ///
}
