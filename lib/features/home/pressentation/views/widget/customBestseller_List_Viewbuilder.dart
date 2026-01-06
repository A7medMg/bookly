import 'package:bookly/features/home/pressentation/viewsmodels/newestBooksCubit/new_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/custom_error_view.dart';
import '../../../../../core/utils/custom_loading-indicator.dart';
import 'best_Seller_List_View_Item.dart';

class CustomBestSellListBuilder extends StatelessWidget {
  const CustomBestSellListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: BlocBuilder<NewBooksCubit, NewBooksState>(
        builder: (BuildContext context, NewBooksState state) {
          if (state is NewBooksSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,

              physics: const NeverScrollableScrollPhysics(),
              itemCount: 40,
              itemBuilder: (context, inex) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child:  CustomBestSellerItem(bookModel: state.books[inex],),
                );
              },
            );
          }else if(state is NewBooksFailure){
            return CustomErrorView(errorMessage: state.errMessage);
          }else{
            return CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
