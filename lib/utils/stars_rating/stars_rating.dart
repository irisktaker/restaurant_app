import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class StarsRating extends StatefulWidget {
  const StarsRating({Key? key}) : super(key: key);

  @override
  _StarsRatingState createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  double _rating = 3;
  @override
  Widget build(BuildContext context) {
    return GFRating(
      value: _rating,
      color: Colors.amber,
      borderColor: Colors.amber,
      onChanged: (value) {
        setState(() {
          _rating = value;
        });
      },
    );
  }
}
