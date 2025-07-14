import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/utilities/api/product_data_api.dart';
import 'package:pmd_solutions/core/data/utilities/api/interceptors/logging_interceptor.dart';

@injectable
class Api {
  Api();

  final _dio =
      Dio(
          BaseOptions(
            receiveTimeout: const Duration(milliseconds: 60000),
            connectTimeout: const Duration(milliseconds: 60000),
            contentType: 'application/json',
          ),
        )
        ..interceptors.add(LoggingInterceptor())
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (
              RequestOptions options,
              RequestInterceptorHandler handler,
            ) {
              options.headers['Content-Type'] = 'application/json';

              return handler.next(options);
            },
          ),
        );
  Dio get dio => _dio;
  final _baseUrl = 'https://fakestoreapi.com/';
  String get baseUrl => _baseUrl;

  ProductDataApi get productDataApi => ProductDataApi(_dio, baseUrl: baseUrl);
}
