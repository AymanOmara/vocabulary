import 'package:domain/locale_storage/i_user_local.dart';

class GetFirstRunUseCase {
  const GetFirstRunUseCase(this._userLocal);

  final IUserLocal _userLocal;

  bool call() {
    return _userLocal.firstRun;
  }
}
