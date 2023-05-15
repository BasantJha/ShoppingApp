import 'package:flutter/material.dart';

class PrefixIcon extends StatelessWidget {
  String imgSrc;
  PrefixIcon({Key? key,required this.imgSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        imgSrc,
        fit: BoxFit.contain,
        height: 15,
        width: 15,
      ),
    );
  }
}
