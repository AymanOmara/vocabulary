import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/features/on_boarding/info_taking_screen/business_logic/info_taking_cubit.dart';

class InfoTakingScreen extends StatelessWidget {
  const InfoTakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoTakingCubit, InfoTakingStates>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Text("info taking screen"),
          ),
        );
      },
    );
  }
}
