import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_error_view.dart';
import '../../../../../core/widgets/custom_loading-indicator.dart';
import '../../../../home/pressentation/views/widget/best_Seller_List_View_Item.dart';
import '../../viewsmodel/search_view_cubit.dart';
import 'custom_TextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0,left: 30,top: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
        CustomTextField(),
             SizedBox(height: 16),
             Text("Result", style: Styles.textStyle18),
             SizedBox(height: 16),
              Expanded(child: ResultListView()),


      ]),
    );
  }
}
class ResultListView extends StatelessWidget {
  const ResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchViewCubit, SearchViewState>(
      builder: (context,state){
        if(state is SearchViewSuccess){
          return  ListView.builder(
              padding: EdgeInsets.zero,


              itemCount: 10,
              itemBuilder: (context,inex){
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child:  CustomBestSellerItem(bookModel: state.books[inex],),
                );
              });
        }else if(state is SearchViewFailure){
          return CustomErrorView(errorMessage: state.errMessage);
        }else{
          return Center(child: Text("Try to search for something",style: Styles.textStyle18,));
        }
      },
    );
  }
}


