
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'customAppBar.dart';
import 'custom_List_View_Books.dart';
import 'custom_Bookitem_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const[
          CustomAppBar(
            image: AssetsData.logo,
            icon:  FontAwesomeIcons.magnifyingGlass,

          ),
          FeatureBooksListView(),
          SizedBox(height: 20,),
           Text("Best Seller",style: Styles.textStyle20,)

        ],
      ),
    );
  }
}




