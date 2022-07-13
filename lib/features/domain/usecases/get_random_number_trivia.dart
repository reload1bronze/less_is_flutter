import 'package:dartz/dartz.dart';

import 'package:less_is_flutter/core/error/failure.dart';
import 'package:less_is_flutter/core/usecases/usecase.dart';
import 'package:less_is_flutter/features/domain/entities/number_trivia.dart';
import 'package:less_is_flutter/features/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
