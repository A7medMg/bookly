import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../constants.dart';

class SlidingText  extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  const SlidingText ({super.key, required this.slideAnimation});

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      animation: slideAnimation, builder: (BuildContext context, Widget? child) {
      return SlideTransition(
        position: slideAnimation,
        child: const Text("Read free Books",textAlign: TextAlign.center,style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: kGtSectraFine,


        ),),
      );
    },

    );
  }
}