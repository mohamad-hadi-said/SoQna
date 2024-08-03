import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressedFn;

  CustomButton(this.text, this.onPressedFn);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 16.0),
      ),
      onPressed: onPressedFn,
      child: CustomText(
        text: text,
        fontSize: 14,
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
