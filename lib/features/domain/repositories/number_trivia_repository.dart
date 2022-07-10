import 'package:dartz/dartz.dart';

import 'package:less_is_flutter/core/error/failure.dart';
import 'package:less_is_flutter/features/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
