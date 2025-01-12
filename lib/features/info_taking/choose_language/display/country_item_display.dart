import 'package:vocabulary/core/display/i_selectable.dart';

class CountryItemDisplay implements ISelectable {
  final String flagImagePath;
  @override
  final String key;
  @override
  bool isSelected = false;

  CountryItemDisplay({
    required this.flagImagePath,
    required this.key,
  });
}
