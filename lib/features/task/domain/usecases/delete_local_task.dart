import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../repositories/tastk_repository.dart';

class DeleteLocalTask {
  final TaskRepository repository;
  DeleteLocalTask(this.repository);

  Future<Either<Failure, Unit>> call(String id) {
    return repository.deleteLocalTask(id);
  }
}