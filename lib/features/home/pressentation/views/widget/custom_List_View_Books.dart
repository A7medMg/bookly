import 'package:bookly/features/home/pressentation/viewsmodels/featuresBooksCubit/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/custom_error_view.dart';
import '../../../../../core/utils/custom_loading-indicator.dart';
import 'custom_Bookitem_view.dart';
class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit,FeatureBooksState>(
      builder:(context,state){
        if(state is FeatureBooksSuccess){
          return  SizedBox(
            height: MediaQuery.of(context).size.height*0.289,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:  CustomBookImageView(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,),
                  );
                }),
          );
        }else if(state is FeatureBooksFailure){
          return CustomErrorView(errorMessage: state.errMessage);
        }else{
          return CustomLoadingIndicator();
        }
      }

    );
  }
}