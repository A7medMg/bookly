import 'package:bookly/features/home/pressentation/viewsmodels/similarBooksCubit/similar_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_view.dart';
import '../../../../../core/widgets/custom_loading-indicator.dart';
import 'custom_Bookitem_view.dart';

class BookDetailsListview extends StatelessWidget {
  const BookDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.18,
      child: BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
        builder: (context, state) {
          if(state is SimilarBooksSuccess){
          return  ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child:  CustomBookImageView(
                      imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                    ),
                  );
                });
          }else if(state is SimilarBooksFailure){
            return CustomErrorView(errorMessage: state.errMessage);
          }else{
            return CustomLoadingIndicator();
          }
        }
      ),
    );
  }
}