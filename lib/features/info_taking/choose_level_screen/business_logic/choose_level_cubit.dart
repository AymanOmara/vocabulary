import 'package:bloc/bloc.dart';
import 'package:domain/features/common/use_case/change_first_run_use_case.dart';
import 'package:domain/features/vocabulary/use_case/set_level_use_case.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:vocabulary/core/helper/utils.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/display/level_item_display.dart';

part 'choose_level_state.dart';

class ChooseLevelCubit extends Cubit<ChooseLevelState> {
  ChooseLevelCubit(
    this._changeFirstLaunchUseCase,
    this._levelUseCase,
  ) : super(ChooseLevelInitial());
  List<LevelItemDisplay> levels = [
    LevelItemDisplay(key: "A1 - Beginning"),
    LevelItemDisplay(key: "A2 - Elementary"),
    LevelItemDisplay(key: "B1 - Intermediate"),
    LevelItemDisplay(key: "B2 - Upper Intermediate"),
    LevelItemDisplay(key: "C1 - Advanced"),
  ];
  final ChangeFirstLaunchUseCase _changeFirstLaunchUseCase;
  final SetLevelUseCase _levelUseCase;

  bool get isAnySelected =>
      levels.firstWhereOrNull((e) => e.isSelected) != null;

  void onLevelSelected(LevelItemDisplay level) {
    levels.unSelectAllExpect(level.key);
    emit(ChooseLevelInitial());
  }

  void updateFirstRun() {
    _changeFirstLaunchUseCase();
  }

  void submitLevel() {
    var selectedLevel = levels.firstWhere((e) => e.isSelected);
    _levelUseCase(selectedLevel.key);
  }
}
