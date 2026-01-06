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
              child: const CustomBookImageView(
                imageUrl: "https://www.freepik.com/free-psd/yellow-gift-with-golden-ribbon-icon-sign-symbol-3d-background-illustration_71292021.htm#fromView=keyword&page=1&position=0&uuid=f83a0af5-a45a-4fb2-a735-1dc515550149&query=Png",
              ),
            );
          }),
    );;
  }
}