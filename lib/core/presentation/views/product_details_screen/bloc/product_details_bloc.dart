import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:pmd_solutions/core/data/usecases/product_details/get_product_detalis_usecase.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/bloc/product_details_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_details_screen/bloc/product_details_state.dart';

@injectable
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetProductDetalisUsecase getProductDetalisUsecase;
  ProductDetailsBloc(this.getProductDetalisUsecase)
    : super(ProductDetailsState.loading()) {
    on<GetProductDetails>((event, emit) async {
      try {
        emit(const ProductDetailsState.loading());

        final data = await getProductDetalisUsecase(event.productID);

        final product = ProductModel.fromJson(data.response.data);

        emit(ProductDetailsState.success(productDetails: product));
      } catch (e) {
        emit(ProductDetailsState.error(message: e.toString()));
      }
    });
  }

  ProductModel? getProductById(int productId) {
    var productList = PreferencesManager.getProducts;

    try {
      return productList.firstWhere((product) => product.id == productId);
    } catch (e) {
      return null;
    }
  }
}
