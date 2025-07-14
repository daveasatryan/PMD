import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pmd_solutions/core/presentation/utilities/color/app_colors.dart';
import 'package:pmd_solutions/core/presentation/utilities/color/color_scheme.dart';
import 'package:pmd_solutions/core/presentation/utilities/strings/app_strings.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  BaseStatelessWidget({super.key});

  AppColors get colors => Theme.of(context).colorScheme.appColors;

  TextTheme get fonts => Theme.of(context).textTheme;

  Size get sizes => MediaQuery.of(context).size;

  AppStrings get appStrings => AppStrings();

  late BuildContext context;

  void hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  Widget baseBuild(BuildContext context);

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return baseBuild(context);
  }
}
