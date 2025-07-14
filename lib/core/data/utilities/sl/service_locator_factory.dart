import 'package:get_it/get_it.dart';

class SlFactory {
  SlFactory({required GetIt getIt}) : _getIt = getIt;

  final GetIt _getIt;
  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) =>
      _getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
}
