import 'package:dartz/dartz.dart';
import 'package:less_is_flutter/core/platform/network_info.dart';
import 'package:less_is_flutter/features/data/datasources/number_trivia_local_data_source.dart';
import 'package:less_is_flutter/features/data/datasources/number_trivia_remote_data_source.dart';

import 'package:less_is_flutter/features/domain/entities/number_trivia.dart';
import 'package:less_is_flutter/features/domain/repositories/number_trivia_repository.dart';
import 'package:less_is_flutter/core/error/failure.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
