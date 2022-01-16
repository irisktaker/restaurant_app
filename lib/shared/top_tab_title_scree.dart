
  import 'package:flutter/material.dart';

Widget topTabTitles({
    required String? title,
    Color color = const Color(0xFF676767),
  }) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            title!,
            style: TextStyle(
              color: color,
              fontFamily: 'cocogoose',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(width: 75),
      ],
    );
  }