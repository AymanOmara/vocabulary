import 'package:domain/locale_storage/i_user_local.dart';

class SetLanguageUseCase {
  final IUserLocal _userLocal;

  SetLanguageUseCase(this._userLocal);

  void call(String language) {
    _userLocal.setLanguage(language);
  }
}
