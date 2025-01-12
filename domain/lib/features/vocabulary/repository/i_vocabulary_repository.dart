import 'package:domain/features/vocabulary/entity/vocabulary_entity.dart';

abstract interface class IVocabularyRepository {
  List<VocabularyEntity> findUserMatchesVocabularies();

  Future<String> explainWord(String word);
}
