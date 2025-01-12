import 'package:data/vocabulary/repository/vocabulary_repository.dart';
import 'package:domain/features/vocabulary/repository/i_vocabulary_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> setupRepositoryInjector(GetIt diInjector) async {
  /// ********* vocabulary **********
  diInjector.registerSingleton<IVocabularyRepository>(VocabularyRepository(diInjector()));

}