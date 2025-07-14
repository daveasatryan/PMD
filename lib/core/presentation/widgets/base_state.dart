import 'package:flutter/material.dart';
import 'package:pmd_solutions/core/presentation/utilities/color/app_colors.dart';
import 'package:pmd_solutions/core/presentation/utilities/color/color_scheme.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  bool _isLoaderShown = false;

  AppColors get colors => Theme.of(context).colorScheme.appColors;

  TextTheme get fonts => Theme.of(context).textTheme;

  Size get sizes => MediaQuery.of(context).size;
  AppStrings get appStrings => AppStrings();

  void hideLoading(BuildContext context) {
    if (_isLoaderShown) {
      Navigator.pop(context);
      _isLoaderShown = false;
    }
  }

  void hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    hideLoading(context);
    super.dispose();
  }
}
