// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pmd_solutions/core/data/data_sources/product_data_source.dart'
    as _i648;
import 'package:pmd_solutions/core/data/repositories/product_data_repository.dart'
    as _i792;
import 'package:pmd_solutions/core/data/usecases/product_data/get_product_data_usecase.dart'
    as _i964;
import 'package:pmd_solutions/core/data/utilities/api/api.dart' as _i637;
import 'package:pmd_solutions/core/presentation/views/card_screen/bloc/card_screen_bloc.dart'
    as _i1008;
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart'
    as _i104;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i637.Api>(() => _i637.Api());
    gh.factory<_i648.ProductDataSource>(
      () => _i648.ProductDataSource(gh<_i637.Api>()),
    );
    gh.factory<_i792.ProductRepository>(
      () => _i792.ProductRepository(gh<_i648.ProductDataSource>()),
    );
    gh.factory<_i964.GetProductDataUsecase>(
      () => _i964.GetProductDataUsecase(
        repository: gh<_i792.ProductRepository>(),
      ),
    );
    gh.factory<_i104.ProductListBloc>(
      () => _i104.ProductListBloc(gh<_i964.GetProductDataUsecase>()),
    );
    gh.factory<_i1008.CardScreenBloc>(
      () => _i1008.CardScreenBloc(gh<_i964.GetProductDataUsecase>()),
    );
    return this;
  }
}
