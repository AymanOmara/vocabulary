import 'package:get_it/get_it.dart';
import 'package:vocabulary/features/info_taking/choose_language/business_logic/choose_language_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';

var getIt = GetIt.I;

void registerDependencies(GetIt diInjector) async {
  /// ********* on Boarding **********
  getIt.registerFactory(() => OnBoardingCubit(
        diInjector(),
      ));

  /// ********* info taking **********
  getIt.registerFactory(() => ChooseLanguageCubit());
}
