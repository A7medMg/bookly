part of 'new_books_cubit.dart';

@immutable
sealed class NewBooksState {}

final class NewBooksInitial extends NewBooksState {}
final class NewBooksLoading extends NewBooksState {}
final class NewBooksSuccess extends NewBooksState {
  final List<BookModel> books;
  NewBooksSuccess(this.books);
}
final class NewBooksFailure extends NewBooksState {
  final String errMessage;
  NewBooksFailure(this.errMessage);
}


