import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'info_taking_states.dart';

class InfoTakingCubit extends Cubit<InfoTakingStates> {
  InfoTakingCubit() : super(InfoTakingInitial());

}
