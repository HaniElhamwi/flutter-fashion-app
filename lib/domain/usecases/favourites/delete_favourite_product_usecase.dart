import 'package:dartz/dartz.dart';
import 'package:fashion_app/core/errors/failure.dart';
import 'package:fashion_app/domain/repository/repositories.dart';
import 'package:fashion_app/domain/usecases/base_usecase.dart';

class DeleteFavouriteProductUsecase extends BaseUsecase<void, int> {
  final FirebaseFavouriteRepository _repository;
  DeleteFavouriteProductUsecase(this._repository);
  @override
  Future<Either<Failure, void>> call(int parameters) async {
    return await _repository.deleteFavouriteProduct(parameters);
  }
}
