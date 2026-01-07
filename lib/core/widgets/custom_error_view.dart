import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorView extends StatelessWidget {
  final String errorMessage;
  const CustomErrorView({super.key, required this.errorMessage});



  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      textAlign: TextAlign.center,
      errorMessage,style: Styles.textStyle20,),);
  }
}
