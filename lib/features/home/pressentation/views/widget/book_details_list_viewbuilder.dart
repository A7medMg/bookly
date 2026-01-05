import 'package:flutter/cupertino.dart';

import 'custom_Bookitem_view.dart';

class BookDetailsListview extends StatelessWidget {
  const BookDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.18,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 9,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const CustomBookImageView(),
            );
          }),
    );;
  }
}