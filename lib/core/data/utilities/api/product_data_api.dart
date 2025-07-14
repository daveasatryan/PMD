import 'package:dio/dio.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:retrofit/retrofit.dart';

part 'product_data_api.g.dart';

@RestApi()
abstract class ProductDataApi {
  factory ProductDataApi(Dio dio, {String baseUrl}) = _ProductDataApi;

  @GET('products')
  Future<HttpResponse<List<ProductModel>>> getProductData();
}
