import 'package:bookly/core/errors/errors_handels.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/utils/api_services.dart';

class SearchRepoImplement implements SearchRepo{
  ApiServices apiServices;
  SearchRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> getSearchBooks(String category)async {
    try {
      var data = await apiServices.get(
        endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$category",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}