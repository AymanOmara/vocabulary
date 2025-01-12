import 'package:flutter/material.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/info_taking/choose_language/display/language_item_display.dart';

class CountryWidget extends StatelessWidget {
  const CountryWidget({
    super.key,
    required this.country,
    required this.onTap,
  });

  final LanguageItemDisplay country;
  final void Function(LanguageItemDisplay) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: InkWell(
        onTap: () => onTap(country),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: _getBoxDecoration(),
          child: Row(
            children: [
              Image.asset(
                "assets/${country.flagImagePath}",
                width: 32,
                height: 24,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                country.key,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Image.asset("assets/arrow_right.png")
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(
          20,
        ),
      ),
      color: country.isSelected ? aliceBlue : lightGray,
      gradient: null,
      boxShadow: null,
      border: Border.all(
        color: country.isSelected ? linkColor : veryLightGray,
        width: 2,
      ),
    );
  }
}
