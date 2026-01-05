import 'package:flutter/cupertino.dart';

import 'best_Seller_List_View_Item.dart';

class CustomBestSellListBuilder extends StatelessWidget {
  const CustomBestSellListBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,

          physics: const NeverScrollableScrollPhysics(),
          itemCount: 40,
          itemBuilder: (context,inex){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const CustomBestSellerItem(),
            );
          }),
    );
  }
}