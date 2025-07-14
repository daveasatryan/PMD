import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pmd_solutions/core/data/utilities/injection/injection.dart';
import 'package:pmd_solutions/core/data/utilities/injection/log/logger_service.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';
import 'package:pmd_solutions/core/presentation/application.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await configureDependencies();

      await PreferencesManager.initPreferences();

      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
      );
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
      );
      runApp(RestorationScope(restorationId: 'root', child: Application()));
    },
    (error, stackTrace) {
      LoggerService().e('Error is $error, stack $stackTrace');
    },
  );
}
