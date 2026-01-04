import 'package:bookly/features/splash/pressentation/views/widgets/sliding_splash_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../home/pressentation/views/home.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();

}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {

    initAnimation();
    navigatorToHome();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }
  void navigatorToHome(){
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const HomeScreen(),transition: Transition.fade,duration: kTranstionDuration);
    });
  }
  void initAnimation(){
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 2));
    slideAnimation=Tween<Offset>(begin: const Offset(0, 1),end: Offset.zero).animate(animationController);

    animationController.forward();
  }
}

