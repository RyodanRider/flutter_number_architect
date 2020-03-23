
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutternumber/core/error/failure.dart';
import 'package:flutternumber/core/usecases/usecase.dart';
import 'package:flutternumber/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutternumber/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  GetConcreteNumberTrivia(this.numberTriviaRepository);

  final NumberTriviaRepository numberTriviaRepository;

  Future<Either<Failure, NumberTrivia>> call(Params params) async{
    return await numberTriviaRepository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number});
}