import 'package:data/locale/locale_keys.dart';
import 'package:domain/locale_storage/i_user_local.dart';
import 'package:get_storage/get_storage.dart';

class UserLocal implements IUserLocal {
  final GetStorage _storage;

  UserLocal(this._storage);

  @override
  String get getLocale => _storage.read(LocaleKeys.locale) ?? "en";

  @override
  void setLocale(String locale) {
    _storage.write(LocaleKeys.locale, locale);
  }

  @override
  bool get firstRun => _storage.read(LocaleKeys.firstLunch) ?? true;

  @override
  void setFirstRun() {
    _storage.write(LocaleKeys.firstLunch, false);
  }

  @override
  String get language => _storage.read(LocaleKeys.language) ?? "English";

  @override
  void setLanguage(String language) {
    _storage.write(LocaleKeys.language, language);
  }

  @override
  String get level => _storage.read(LocaleKeys.level) ?? "A1 - Beginning";

  @override
  void setLevel(String level) {
    _storage.write(LocaleKeys.level, level);
  }
}
