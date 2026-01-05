import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'best_Seller_List_View_Item.dart';
import 'customAppBar.dart';
import 'customBestseller_List_Viewbuilder.dart';
import 'custom_List_View_Books.dart';


class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(
                  image: AssetsData.logo,
                  icon: FontAwesomeIcons.magnifyingGlass,
                ),
              ),
              FeatureBooksListView(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
        SliverFillRemaining(

          child:CustomBestSellListBuilder(),
        )
      ],
    );

  }
}



