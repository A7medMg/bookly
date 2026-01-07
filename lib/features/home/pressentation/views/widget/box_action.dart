import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/widgets/custom_button.dart';

class CustomBoxAction extends StatelessWidget {
  final BookModel bookModel;
  const CustomBoxAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(child: CustomButton(backgroundColor: Colors.white, textColor: Colors.black,text: "Free",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),)


          )),
          Expanded(child: CustomButton(
            onPressed: ()async{
              final Uri _url = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }

            },
            backgroundColor: Color(0xffEF8262), textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14),
              bottomRight: Radius.circular(14),), text: 'Free Preview',


          )),
        ],
      ),
    );
  }
}