import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/di/injector.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/features/on_boarding/getting_started/presentation/getting_started_screen.dart';
import 'package:vocabulary/features/on_boarding/info_taking_screen/business_logic/info_taking_cubit.dart';
import 'package:vocabulary/features/on_boarding/info_taking_screen/presentation/page/info_taking_screen.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/presentation/page/on_boarding_screen.dart';

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
      case AppRoutes.infoTakingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<InfoTakingCubit>(),
            child: InfoTakingScreen(),
          ),
        );
    }
    return null;
  }
}
