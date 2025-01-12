import 'package:vocabulary/core/display/i_selectable.dart';

extension ArrayUtils<T> on List<T> {
  void updateWhere(bool Function(T) condition, T newItem) {
    final index = indexWhere(condition);
    if (index != -1) {
      this[index] = newItem;
    }
  }
}
extension MarkUnselected on List<ISelectable> {
  void unSelectAllExpect(String key) {
    for (var i in this) {
      i.isSelected = i.key == key;
    }
  }
}