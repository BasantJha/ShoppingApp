import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(color: Colors.black.withOpacity(0.4),thickness: 0.5,);
  }
}
