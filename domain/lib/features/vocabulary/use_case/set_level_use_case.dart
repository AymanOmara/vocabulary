import 'package:domain/locale_storage/i_user_local.dart';

class SetLevelUseCase {
  final IUserLocal _userLocal;

  SetLevelUseCase(this._userLocal);

  void call(String level) {
    _userLocal.setLevel(level);
  }
}
