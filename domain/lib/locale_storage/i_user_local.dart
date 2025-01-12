abstract interface class IUserLocal {
  String get getLocale;

  void setLocale(String locale);

  bool get firstRun;

  void setFirstRun();

  String get language;

  void setLanguage(String language);

  String get level;

  void setLevel(String level);
}
