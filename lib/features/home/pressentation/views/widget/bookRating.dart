import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';

class CustomRatingBestSeller extends StatelessWidget {
 final num? rating;
 final int ratingCount;
  final MainAxisAlignment mainAxisAlignment;
  const CustomRatingBestSeller({super.key,  this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.ratingCount});

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
         "$rating",
          style: Styles.textStyle20,
        ),
        const SizedBox(width: 5),
        Opacity(
            opacity: .5,
            child: Text("($ratingCount)", style: Styles.textStyle14)),
      ],
    );
  }
}