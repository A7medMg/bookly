
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String image;
  final IconData? icon;

  const CustomAppBar({super.key, required this.image, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 50),
      child: Row(
        children: [
          Image.asset(image,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Icon(icon,size: 24,) ),
        ],
      ),
    );
  }
}