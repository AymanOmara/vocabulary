import 'package:flutter/material.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/display/level_item_display.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({
    super.key,
    required this.level,
    required this.onTap,
  });

  final LevelItemDisplay level;
  final void Function(LevelItemDisplay) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(level),
      child: Container(
        decoration: _getBoxDecoration(),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        child: Row(
          children: [
            Text(
              level.key,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Spacer(),
            Image.asset("assets/arrow_right.png")
          ],
        ),
      ),
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      color: level.isSelected ? aliceBlue  : null,
    );
  }
}
