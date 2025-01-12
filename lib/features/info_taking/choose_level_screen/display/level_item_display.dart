import 'package:vocabulary/core/display/i_selectable.dart';

class LevelItemDisplay implements ISelectable {
  @override
  bool isSelected = false;

  @override
  String key = "";

  LevelItemDisplay({
    required this.key,
  });
}
