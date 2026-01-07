import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../home/data/models/book_model/book_model.dart';
import '../../data/search_repo_implement.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit(this.searchRepoImp) : super(SearchViewInitial());
  final SearchRepoImplement searchRepoImp;
  Future<void>fetchSearchBooks(String query)async{
    emit(SearchViewLoading());
    var result = await searchRepoImp.getSearchBooks(query);
    result.fold((failure) {
      emit(SearchViewFailure(failure.errMessage));
      }, (books) {
      emit(SearchViewSuccess(books));
    });

  }

}
