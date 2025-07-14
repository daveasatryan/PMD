import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/usecases/product_data/get_product_data_usecase.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_event.dart';
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_state.dart';

@injectable
class CardScreenBloc extends Bloc<CardScreenEvent, CardScreenState> {
  final GetProductDataUsecase getInitialDataUsecase;

  CardScreenBloc(this.getInitialDataUsecase)
    : super(CardScreenState.loading()) {
    on<GetCardData>((event, emit) async {
      try {
        emit(const CardScreenState.loading());

        final productList = PreferencesManager.getProducts;

        emit(CardScreenState.success(productList: productList));
      } catch (e) {
        emit(CardScreenState.error(message: e.toString()));
      }
    });
  }
}
