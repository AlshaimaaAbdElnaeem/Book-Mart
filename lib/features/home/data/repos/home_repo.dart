import 'package:book_mart/core/errors/failures.dart';
import 'package:book_mart/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewsBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
