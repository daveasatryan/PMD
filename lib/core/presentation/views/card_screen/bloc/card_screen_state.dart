import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';

part 'card_screen_state.freezed.dart';

@freezed
class CardScreenState with _$CardScreenState {
  const factory CardScreenState.loading() = _Loading;

  const factory CardScreenState.success({
    required List<ProductModel> productList,
  }) = _InitialCardData;

  const factory CardScreenState.error({required String message}) = _Error;
}
