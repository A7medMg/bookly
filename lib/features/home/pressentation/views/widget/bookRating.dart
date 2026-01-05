import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class CustomRatingBestSeller extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
   CustomRatingBestSeller({super.key,  this.mainAxisAlignment=MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar,
            size: 17,
            color: Colors.amber),
        const SizedBox(width: 6),
        Text(
          "4.8",
          style: Styles.textStyle20,
        ),
        const SizedBox(width: 5),
        Opacity(
            opacity: .5,
            child: Text("(239)", style: Styles.textStyle14)),
      ],
    );
  }
}