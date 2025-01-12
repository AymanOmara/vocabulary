import 'package:domain/features/vocabulary/entity/vocabulary_entity.dart';
import 'package:domain/features/vocabulary/repository/i_vocabulary_repository.dart';

class FindUserMatchesVocabulariesUseCase {
  final IVocabularyRepository _repository;

  const FindUserMatchesVocabulariesUseCase(this._repository);

  List<VocabularyEntity> call() {
    return _repository.findUserMatchesVocabularies();
  }
}
