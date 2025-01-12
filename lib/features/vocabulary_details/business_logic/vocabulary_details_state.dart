part of 'vocabulary_details_cubit.dart';

@immutable
sealed class VocabularyDetailsState {}

final class VocabularyDetailsInitial extends VocabularyDetailsState {}
final class VocabularyDetailsUpdateLoadingState extends VocabularyDetailsState {}
