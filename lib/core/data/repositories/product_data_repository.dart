import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/data_sources/product_data_source.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:retrofit/dio.dart';

@injectable
class ProductRepository {
  ProductRepository(this.dataSource);

  final ProductDataSource dataSource;

  Future<HttpResponse<List<ProductModel>>> getProductData() async =>
      await dataSource.getProductData();
}
