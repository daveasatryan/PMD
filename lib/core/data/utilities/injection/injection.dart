import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pmd_solutions/core/data/utilities/injection/injection.config.dart';

/// Configures getIt dependencies
@InjectableInit()
Future<void> configureDependencies() async => GetIt.instance.init();
