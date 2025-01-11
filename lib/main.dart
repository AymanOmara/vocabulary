import 'package:di/di.dart';
import 'package:domain/features/common/use_case/get_first_run_use_case.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vocabulary/core/di/injector.dart';
import 'package:vocabulary/core/routing/app_router.dart';
import 'package:vocabulary/core/routing/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.registerDependencies();
  registerDependencies(diInjector);
  final GetFirstRunUseCase firstRun = diInjector();
  runApp(
    MyApp(
      firstRun: firstRun(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.firstRun,
  });

  final bool firstRun;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRouter,
      initialRoute: AppRoutes.gettingStartedScreen,
    );
  }
}
