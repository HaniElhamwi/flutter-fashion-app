import 'package:dartz/dartz.dart';
import 'package:fashion_app/core/errors/failure.dart';
import 'package:fashion_app/domain/entities/account/user.dart';
import 'package:fashion_app/domain/repository/repositories.dart';
import 'package:fashion_app/domain/usecases/base_usecase.dart';

class UpdateUserProfileUsecase extends BaseUsecase<void, UserModel> {
  final FirebaseUserRepository _repository;
  UpdateUserProfileUsecase(this._repository);
  @override
  Future<Either<Failure, void>> call(UserModel parameters) async {
    return await _repository.updateUserProfile(parameters);
  }
}
