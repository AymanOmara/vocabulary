import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get_it/get_it.dart';
import 'package:vocabulary/features/home/business_logic/home_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_language/business_logic/choose_language_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/business_logic/choose_level_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';
import 'package:vocabulary/features/vocabulary_details/business_logic/vocabulary_details_cubit.dart';

var getIt = GetIt.I;

void registerDependencies(GetIt diInjector) async {
  Gemini.init(
    apiKey: "AIzaSyBhfTIfvbEiLm_TY2336zc0q8RHHulm2nA",
    enableDebugging: true,
  );

  /// ********* on Boarding **********
  getIt.registerFactory(() => OnBoardingCubit());

  /// ********* info taking **********
  getIt.registerFactory(() => ChooseLanguageCubit(diInjector()));
  getIt.registerFactory(() => ChooseLevelCubit(diInjector(), diInjector()));

  /// ********* home **********
  getIt.registerFactory(() => HomeCubit(diInjector()));
  getIt.registerFactoryParam((param1, _) => VocabularyDetailsCubit(param1 as String));
}
