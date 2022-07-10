import 'package:dartz/dartz.dart';

import 'package:less_is_flutter/core/error/failure.dart';
import 'package:less_is_flutter/features/domain/entities/number_trivia.dart';
import 'package:less_is_flutter/features/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
