import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  const BlocFactory({required GetIt getIt}) : _getIt = getIt;

  final GetIt _getIt;

  T create<T extends BlocBase<dynamic>>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) =>
      _getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
}
