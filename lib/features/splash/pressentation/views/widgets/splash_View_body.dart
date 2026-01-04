import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
        const Text("Read free Books",textAlign: TextAlign.center,style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: kGtSectraFine,


        ),),
      ],
    );
  }
}
