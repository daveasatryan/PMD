import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/models/product/product_model.dart';
import 'package:pmd_solutions/core/data/usecases/product_data/get_product_data_usecase.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_event.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_state.dart';

@injectable
class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final GetProductDataUsecase getInitialDataUsecase;

  ProductListBloc(this.getInitialDataUsecase)
    : super(ProductListState.loading()) {
    on<GetProductList>((event, emit) async {
      try {
        emit(const ProductListState.loading());

        final data = await getInitialDataUsecase();

        final productList =
            (data.response.data as List)
                .map((item) => ProductModel.fromJson(item))
                .toList();

        emit(ProductListState.success(productList: productList));
      } catch (e) {
        emit(ProductListState.error(message: e.toString()));
      }
    });

    on<AddToCard>((event, emit) {
      try {
        PreferencesManager.addProduct(event.product);
      } catch (e) {
        emit(ProductListState.error(message: e.toString()));
      }
    });
  }
}
