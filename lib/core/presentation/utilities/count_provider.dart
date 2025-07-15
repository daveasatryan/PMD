import 'package:flutter/widgets.dart';
import 'package:pmd_solutions/core/data/utilities/storage/preferences_manager.dart';

class CountProvider extends ChangeNotifier {
  int? _count;

  set setCount(int? count) {
    _count = count;
    PreferencesManager.setCount = _count;
    notifyListeners();
  }

  int? get count {
    _count ??= PreferencesManager.getCount;
    return _count;
  }
}
