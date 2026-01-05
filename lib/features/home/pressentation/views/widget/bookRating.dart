import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class CustomRatingBestSeller extends StatelessWidget {
  const CustomRatingBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
        const SizedBox(width: 6),
        Text(
          "4.8",
          style: Styles.textStyle20,
        ),
        const SizedBox(width: 5),
        Text("(239)", style: Styles.textStyle14.copyWith(
          color: Colors.grey,
        )),
      ],
    );
  }
}