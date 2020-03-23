
import 'package:dartz/dartz.dart';
import 'package:flutternumber/core/error/failure.dart';
import 'package:flutternumber/core/usecases/usecase.dart';
import 'package:flutternumber/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutternumber/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParam> {
  GetRandomNumberTrivia(this.numberTriviaRepository);

  final NumberTriviaRepository numberTriviaRepository;

  Future<Either<Failure, NumberTrivia>> call(NoParam noParam) async{
    return await numberTriviaRepository.getRandomNumberTrivia();
  }
}