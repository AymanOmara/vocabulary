class CountryItemDisplay {
  final String flagImagePath;
  final String languageTitle;
  bool isSelected = false;

  CountryItemDisplay({
    required this.flagImagePath,
    required this.languageTitle,
  });
}

extension MarkUnselected on List<CountryItemDisplay> {
  void unSelectAllExpect(String countryTitle) {
    for (var i in this) {
      i.isSelected = i.languageTitle == countryTitle;
    }
  }
}
