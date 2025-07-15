import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:pmd_solutions/core/data/repositories/product_data_repository.dart';
import 'package:retrofit/dio.dart';

@injectable
class GetProductDetalisUsecase {
  GetProductDetalisUsecase({required this.repository});

  final ProductRepository repository;

  Future<HttpResponse<ProductModel>> call(int id) async =>
      await repository.getProductById(id);
}
