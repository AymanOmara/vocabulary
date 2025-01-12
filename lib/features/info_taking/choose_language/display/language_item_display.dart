import 'package:vocabulary/core/display/i_selectable.dart';

class LanguageItemDisplay implements ISelectable {
  final String flagImagePath;
  @override
  final String key;
  @override
  bool isSelected = false;

  LanguageItemDisplay({
    required this.flagImagePath,
    required this.key,
  });
}
