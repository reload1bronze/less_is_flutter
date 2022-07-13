import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:less_is_flutter/core/error/failure.dart';
import 'package:less_is_flutter/core/usecases/usecase.dart';
import 'package:less_is_flutter/features/domain/entities/number_trivia.dart';
import 'package:less_is_flutter/features/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number}) : super();

  @override
  List<Object?> get props => throw UnimplementedError();
}
