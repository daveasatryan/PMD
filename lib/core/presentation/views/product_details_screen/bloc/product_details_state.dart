import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';

part 'product_details_state.freezed.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.success({
    required ProductModel productDetails,
  }) = _InitialData;

  const factory ProductDetailsState.error({required String message}) = _Error;
}
