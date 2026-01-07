part of 'search_view_cubit.dart';

@immutable
sealed class SearchViewState {}

final class SearchViewInitial extends SearchViewState {}
final class SearchViewLoading extends SearchViewState {}
final class SearchViewFailure extends SearchViewState {
  final String errMessage;
  SearchViewFailure(this.errMessage);
}
final class SearchViewSuccess extends SearchViewState {
  final List<BookModel> books;
  SearchViewSuccess(this.books);
}

