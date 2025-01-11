import 'package:get_it/get_it.dart';
import 'package:vocabulary/features/on_boarding/info_taking_screen/business_logic/info_taking_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';

var getIt = GetIt.I;

void registerDependencies(GetIt diInjector) async {
  /// ********* on Boarding **********
  getIt.registerFactory(() => OnBoardingCubit(
        diInjector(),
      ));
  getIt.registerFactory(() => InfoTakingCubit());
}
