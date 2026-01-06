part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}
final class FeatureBooksLoading extends FeatureBooksState {}
final class FeatureBooksFailure extends FeatureBooksState {
  final String errMessage;
  FeatureBooksFailure(this.errMessage);
}
final class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel>books;
  FeatureBooksSuccess(this.books);
}


