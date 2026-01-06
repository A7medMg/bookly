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
          child: CustomBookImageView(
            imageUrl: "https://www.freepik.com/free-psd/yellow-gift-with-golden-ribbon-icon-sign-symbol-3d-background-illustration_71292021.htm#fromView=keyword&page=1&position=0&uuid=f83a0af5-a45a-4fb2-a735-1dc515550149&query=Png",
          ),
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
          mainAxisAlignment: MainAxisAlignment.center, rating: 3, ratingCount: 3,
        ),
        const SizedBox(height: 37),
        const CustomBoxAction(),
      ],
    );
  }
}