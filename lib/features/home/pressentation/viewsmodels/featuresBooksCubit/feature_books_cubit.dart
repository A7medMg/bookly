import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo_implement.dart';
part 'feature_books_state.dart';
class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepoImp) : super(FeatureBooksInitial());
  final HomeRepoImp homeRepoImp;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepoImp.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeatureBooksFailure(failure.errMessage)),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
