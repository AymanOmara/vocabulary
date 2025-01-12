import 'package:vocabulary/core/display/i_selectable.dart';

extension MarkUnselected on List<ISelectable> {
  void unSelectAllExpect(String key) {
    for (var i in this) {
      i.isSelected = i.key == key;
    }
  }
}