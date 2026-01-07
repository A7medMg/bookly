import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'bookRating.dart';
import 'custom_Bookitem_view.dart';


class CustomBestSellerItem extends StatelessWidget {
  final BookModel bookModel;
  const CustomBestSellerItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImageView(imageUrl:bookModel.volumeInfo.imageLinks?.thumbnail  ?? "",),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,

                    child: Text(
                      maxLines: 2,
                      bookModel.volumeInfo.title ?? "",
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                      maxLines: 1,
                      bookModel.volumeInfo.authors?[0]??"", style: Styles.textStyle14.copyWith(
                    overflow: TextOverflow.ellipsis,

                  )),
                  const SizedBox(height: 5),

                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       const Spacer(),

                      CustomRatingBestSeller(rating: bookModel.volumeInfo.averageRating??4.3, ratingCount: bookModel.volumeInfo.ratingsCount ??255),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
