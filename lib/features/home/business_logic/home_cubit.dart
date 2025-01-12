import 'package:bloc/bloc.dart';
import 'package:domain/features/vocabulary/entity/vocabulary_entity.dart';
import 'package:domain/features/vocabulary/use_case/find_user_matches_vocabularies_use_case.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._useCase) : super(HomeInitial()) {
    vocabularies = _useCase();
  }

  final FindUserMatchesVocabulariesUseCase _useCase;
  List<VocabularyEntity> vocabularies = [];

}
