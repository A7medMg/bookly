import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomBookImageView extends StatelessWidget {
  const CustomBookImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: Container(


          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:  BorderRadius.circular(16),
              image:const  DecorationImage(

                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test))
          ),
        ),
      ),
    );
  }
}