import 'package:bookly/core/errors/errors_handels.dart';
import 'package:dartz/dartz.dart';

import '../../home/data/models/book_model/book_model.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<BookModel>>> getSearchBooks(String query);


}