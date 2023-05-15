import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareHorizontal extends StatelessWidget {
  const SquareHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/6row1.png',
                  height: 100,
                  fit: BoxFit.fitWidth,
                ))),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/6row2.png',
                  height: 100,
                  fit: BoxFit.fitWidth,
                ))),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/6row3.png',
                  height: 100,
                  fit: BoxFit.fitWidth,
                ))),
      ],
    );
  }
}
