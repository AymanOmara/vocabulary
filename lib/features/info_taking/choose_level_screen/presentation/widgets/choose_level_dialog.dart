import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/di/injector.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/business_logic/choose_level_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_level_screen/presentation/widgets/level_widget.dart';

class ChooseLevelDialog extends StatelessWidget {
  const ChooseLevelDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChooseLevelCubit>(),
      child: BlocBuilder<ChooseLevelCubit, ChooseLevelState>(
        builder: (context, state) {
          ChooseLevelCubit cubit = BlocProvider.of(context);
          return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Your level",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Column(
                  children: cubit.levels
                      .map((e) => LevelWidget(
                            level: e,
                            onTap: (level) {
                              cubit.onLevelSelected(level);
                            },
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: cubit.isAnySelected
                      ? () {
                          cubit.submitLevel();
                          cubit.updateFirstRun();
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRoutes.home,
                            (route) => false,
                          );
                        }
                      : null,
                  disabledColor: sliverGray,
                  color: linkColor,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  minWidth: double.infinity,
                  textColor: Colors.white,
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
