import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/features/vocabulary_details/business_logic/vocabulary_details_cubit.dart';

class VocabularyDetailsScreen extends StatelessWidget {
  const VocabularyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VocabularyDetailsCubit, VocabularyDetailsState>(
      builder: (context, state) {
        VocabularyDetailsCubit cubit = BlocProvider.of(context);
        return Scaffold(
          body: SafeArea(
            child: cubit.isLoading
                ? CircularProgressIndicator()
                : Column(
                    children: [
                      Text(cubit.details),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
