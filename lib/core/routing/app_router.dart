import 'package:flutter/material.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/features/on_boarding/getting_started/presentation/getting_started_screen.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.gettingStartedScreen:
        return MaterialPageRoute(
          builder: (_) => GettingStartedScreen(),
        );
    }
    return null;
  }
}
