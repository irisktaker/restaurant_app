import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Error Showed if Field is Empty on Submit button Pressed'),
            TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text.text.isEmpty ? _validate = true : _validate = false;
                });
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
