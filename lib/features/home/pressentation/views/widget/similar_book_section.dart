import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_list_viewbuilder.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          "You can also like",

          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        BookDetailsListview(),
        const SizedBox(height: 40),
      ],
    );
  }
}