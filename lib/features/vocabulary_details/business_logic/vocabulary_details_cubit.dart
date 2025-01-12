import 'package:bloc/bloc.dart';
import 'package:domain/features/vocabulary/repository/i_vocabulary_repository.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:meta/meta.dart';

part 'vocabulary_details_state.dart';

class VocabularyDetailsCubit extends Cubit<VocabularyDetailsState> {
  VocabularyDetailsCubit(
    this.word,
  ) : super(VocabularyDetailsInitial()) {
    fetchWordDetails();
  }


  final String word;
  bool isLoading = false;
  String details = "";

  void fetchWordDetails() async{
    isLoading = true;
    emit(VocabularyDetailsUpdateLoadingState());
    try {
      isLoading = false;
      final response = await Gemini.instance.prompt(
        parts: [
          Part.text(
            'Explain this word and provide an example using the same language: $word',
          ),
        ],
      );
      details = response?.output ?? "No available output";
      emit(VocabularyDetailsUpdateLoadingState());
    } catch (e) {
      details = "An error occurred while explaining the word.";
    }
  }
}
