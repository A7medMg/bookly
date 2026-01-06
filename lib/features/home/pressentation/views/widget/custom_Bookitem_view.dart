import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../core/utils/assets.dart';
class CustomBookImageView extends StatelessWidget {

  final String imageUrl;

  const CustomBookImageView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6/4,
          child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: imageUrl,
            errorWidget: (context, url, error) => Icon(Icons.error),
          
          ),
        ),
      ),
    );
  }
}