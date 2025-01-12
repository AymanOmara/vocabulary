import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/ui/back_widget.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/core/ui/vocabulary_container.dart';
import 'package:vocabulary/features/vocabulary_details/business_logic/vocabulary_details_cubit.dart';

class VocabularyDetailsScreen extends StatelessWidget {
  const VocabularyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VocabularyDetailsCubit, VocabularyDetailsState>(
      builder: (context, state) {
        VocabularyDetailsCubit cubit = BlocProvider.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Row(
                  children: [
                    BackWidget(),
                  ],
                ),
                if (cubit.isLoading)
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(color: linkColor,),
                    ),
                  )
                else
                  Expanded(
                    child: SingleChildScrollView(
                      child: VocabularyContainer(
                        child: Text(
                          cubit.details,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}