
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutternumber/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParam extends Equatable {}