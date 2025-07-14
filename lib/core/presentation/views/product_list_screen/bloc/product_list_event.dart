import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';

part 'product_list_event.freezed.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.getProductList() = GetProductList;
  const factory ProductListEvent.addToCard({required ProductModel product}) =
      AddToCard;
}
