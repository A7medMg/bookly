import 'package:flutter/material.dart';

import 'book_details_custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar()
        ],
      ),
    );
  }
}


