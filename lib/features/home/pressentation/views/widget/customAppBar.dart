
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomAppBar extends StatelessWidget {
  final String image;
  final IconData? icon;

  const CustomAppBar({super.key, required this.image, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Image.asset(image,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon: Icon(icon,size: 24,) ),
        ],
      ),
    );
  }
}