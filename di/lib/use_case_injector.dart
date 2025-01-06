import 'package:domain/features/common/use_case/get_first_run_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> setupUseCaseInjector(GetIt diInjector) async {
  /// ********* Common **********
  diInjector.registerFactory(() => GetFirstRunUseCase(diInjector()));
}
