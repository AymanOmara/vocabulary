import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/di/injector.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/features/home/business_logic/home_cubit.dart';
import 'package:vocabulary/features/home/presentation/page/home_screen.dart';
import 'package:vocabulary/features/info_taking/choose_language/business_logic/choose_language_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_language/presentation/page/choose_language_screen.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/business_logic/choose_level_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/presentation/page/choose_language_screen.dart';
import 'package:vocabulary/features/on_boarding/getting_started/presentation/getting_started_screen.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/presentation/page/on_boarding_screen.dart';
import 'package:vocabulary/features/vocabulary_details/business_logic/vocabulary_details_cubit.dart';
import 'package:vocabulary/features/vocabulary_details/presentation/page/vocabulary_details_screen.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.gettingStartedScreen:
        return MaterialPageRoute(
          builder: (_) => GettingStartedScreen(),
        );
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<OnBoardingCubit>(),
            child: OnBoardingScreen(),
          ),
        );
      case AppRoutes.chooseLanguageScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ChooseLanguageCubit>(),
            child: ChooseLanguageScreen(),
          ),
        );
      case AppRoutes.chooseLevelScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ChooseLevelCubit>(),
            child: ChooseLevelScreen(),
          ),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<HomeCubit>(),
            child: HomeScreen(),
          ),
        );
      case AppRoutes.vocabularyDetails:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<VocabularyDetailsCubit>(
              param1: settings.arguments as String,
            ),
            child: VocabularyDetailsScreen(),
          ),
        );
    }
    return null;
  }
}
