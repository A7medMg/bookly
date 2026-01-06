import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo_implement.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.homeRepoImp) : super(NewBooksInitial());
  final HomeRepoImp homeRepoImp;

  Future<void> fetchNewBooks() async {
    emit(NewBooksLoading());
    var result = await homeRepoImp.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewBooksSuccess(books));
      },
    );
  }
}
