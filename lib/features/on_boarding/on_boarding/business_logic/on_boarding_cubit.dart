import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/display/on_boarding_slider_item.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  List<OnBoardingSliderItem> onBoardingSliders = [
    OnBoardingSliderItem(
      title: "Welcome to Speaker!",
      imagePath: "getting_started.svg",
      subTitle: "Your journey to confident speaking starts here",
    ),
    OnBoardingSliderItem(
      title: "Set Your Speaking Level",
      imagePath: "level_Illustration.svg",
      subTitle:
          "Pick the level that best matches your experience to personalize your path",
    ),
    OnBoardingSliderItem(
      title: "Start Speaking",
      imagePath: "start_Illustration.svg",
      subTitle:
          "Begin your personalized journey to becoming a confident and skilled speaker",
    ),
  ];
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(OnBoardingUpdateCurrentSliderIndex());
  }
}
