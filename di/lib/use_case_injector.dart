import 'package:domain/features/common/use_case/change_first_run_use_case.dart';
import 'package:domain/features/common/use_case/get_first_run_use_case.dart';
import 'package:domain/features/vocabulary/use_case/find_user_matches_vocabularies_use_case.dart';
import 'package:domain/features/vocabulary/use_case/set_language_use_case.dart';
import 'package:domain/features/vocabulary/use_case/set_level_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> setupUseCaseInjector(GetIt diInjector) async {
  /// ********* Common **********
  diInjector.registerFactory(() => GetFirstRunUseCase(diInjector()));
  diInjector.registerFactory(() => ChangeFirstLaunchUseCase(diInjector()));

  /// ********* Vocabulary **********
  diInjector.registerFactory(() => FindUserMatchesVocabulariesUseCase(diInjector()));
  diInjector.registerFactory(() => SetLanguageUseCase(diInjector()));
  diInjector.registerFactory(() => SetLevelUseCase(diInjector()));

}
