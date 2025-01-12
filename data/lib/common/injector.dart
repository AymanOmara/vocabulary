import 'package:data/locale/user_local.dart';

import 'package:domain/locale_storage/i_user_local.dart';

import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

Future<void> initializeDataInjector(GetIt injector) async {

  await GetStorage.init();
  injector.registerSingleton(GetStorage());
  injector.registerSingleton<IUserLocal>(UserLocal(injector()));
}
