import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:vocabulary/core/helper/utils.dart';
import 'package:vocabulary/features/info_taking/choose_language/display/country_item_display.dart';

part 'choose_language_states.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageStates> {
  ChooseLanguageCubit() : super(ChooseLanguageInitial());

  bool get isAnySelected =>
      countries.firstWhereOrNull((it) => it.isSelected) != null;
  final List<CountryItemDisplay> countries = [
    CountryItemDisplay(
      flagImagePath: "uk_flag.png",
      key: "English",
    ),
    CountryItemDisplay(
      flagImagePath: "france_flag.png",
      key: "France",
    ),
    CountryItemDisplay(
      flagImagePath: "spain_flag.png",
      key: "Spain",
    ),
  ];

  void updateSelectedLanguage(CountryItemDisplay country) {
    countries.unSelectAllExpect(country.key);
    emit(ChooseLanguageInitial());
  }
}
