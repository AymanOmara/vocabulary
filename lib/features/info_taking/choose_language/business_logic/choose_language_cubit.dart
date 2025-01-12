import 'package:bloc/bloc.dart';
import 'package:domain/features/vocabulary/use_case/set_language_use_case.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:vocabulary/core/helper/utils.dart';
import 'package:vocabulary/features/info_taking/choose_language/display/language_item_display.dart';

part 'choose_language_states.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageStates> {
  ChooseLanguageCubit(this._useCase,) : super(ChooseLanguageInitial());
  final SetLanguageUseCase _useCase;

  bool get isAnySelected =>
      countries.firstWhereOrNull((it) => it.isSelected) != null;
  final List<LanguageItemDisplay> countries = [
    LanguageItemDisplay(
      flagImagePath: "uk_flag.png",
      key: "English",
    ),
    LanguageItemDisplay(
      flagImagePath: "france_flag.png",
      key: "France",
    ),
    LanguageItemDisplay(
      flagImagePath: "spain_flag.png",
      key: "Spain",
    ),
  ];

  void updateSelectedLanguage(LanguageItemDisplay country) {
    countries.unSelectAllExpect(country.key);
    emit(ChooseLanguageInitial());
  }

  void submitLanguage(){
     var selectedLanguage = countries.firstWhere((e)=> e.isSelected);
     _useCase(selectedLanguage.key);
  }
}
