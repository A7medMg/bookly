import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;

  final BorderRadius ? borderRadius;

   CustomButton({super.key, required this.backgroundColor, required this.textColor,  this.borderRadius, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),

          ),
          child: Text(text,style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            color:textColor,

          )
          )),
    );
  }
}
