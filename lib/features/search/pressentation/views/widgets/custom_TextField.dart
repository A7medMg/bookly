
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../viewsmodel/search_view_cubit.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String val2 = "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (val)async{
        if(val.isNotEmpty){
          val2=val;
          await BlocProvider.of<SearchViewCubit>(context).fetchSearchBooks(val);
        }

      },

      decoration: InputDecoration(
        border:buildBorder() ,
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: ()async {
            await BlocProvider.of<SearchViewCubit>(context).fetchSearchBooks(val2);
          },
          icon: Opacity(
            opacity: .8,
            child: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}