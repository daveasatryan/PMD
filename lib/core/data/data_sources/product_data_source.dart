import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:pmd_solutions/core/data/utilities/api/api.dart';
import 'package:pmd_solutions/core/data/utilities/api/product_data_api.dart';
import 'package:retrofit/dio.dart';

@injectable
class ProductDataSource {
  ProductDataSource(Api api) {
    this.api = api.productDataApi;
  }

  late final ProductDataApi api;

  Future<HttpResponse<List<ProductModel>>> getProductData() async {
    return await api.getProductData();
  }
}
