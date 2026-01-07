import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'bookRating.dart';
import 'box_action.dart';
import 'custom_Bookitem_view.dart';



class BooksDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BooksDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.19,
          ),
          child: CustomBookImageView(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(height: 42),
        Text(
          textAlign: TextAlign.center,
         bookModel.volumeInfo.title!,

          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
           bookModel.volumeInfo.authors!.first,

            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 18),
       CustomRatingBestSeller(
          mainAxisAlignment: MainAxisAlignment.center, rating: bookModel.volumeInfo.averageRating??0, ratingCount: bookModel.volumeInfo.ratingsCount??0,
        ),
        const SizedBox(height: 37),
         CustomBoxAction(bookModel: bookModel,),
      ],
    );
  }
}