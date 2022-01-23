import 'package:flutter/material.dart';

Widget yourOrdersDetails({
  required String text,
  required String price,
  FontWeight? fontWeight,
}) {
  return Column(
    children: [
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: fontWeight,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
    ],
  );
}
