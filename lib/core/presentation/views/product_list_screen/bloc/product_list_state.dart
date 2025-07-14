import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';

part 'product_list_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.loading() = _Loading;

  const factory ProductListState.success({
    required List<ProductModel> productList,
  }) = _InitialData;

  const factory ProductListState.error({required String message}) = _Error;
}
