import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'bookRating.dart';
import 'box_action.dart';
import 'custom_Bookitem_view.dart';



class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.19,
          ),
          child: CustomBookImageView(),
        ),
        const SizedBox(height: 42),
        Text(
          "The Jungle Book",

          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",

            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 18),
        CustomRatingBestSeller(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const CustomBoxAction(),
      ],
    );
  }
}