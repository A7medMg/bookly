import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/pressentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

import '../../../data/models/book_model/book_model.dart';
import 'bookRating.dart';
import 'book_details_custom_app_bar.dart';
import 'book_details_list_viewbuilder.dart';
import 'book_details_section.dart';
import 'box_action.dart';
import 'custom_Bookitem_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(

              children: [
                const CustomBookDetailsAppBar(),
                 BooksDetailsSection(bookModel: bookModel,),
                const Expanded(child: SizedBox(height: 50)),
                const  SimilarBooksSection(),

              ],
            ),
          ),
        ),
      ],
    );
  }
}




