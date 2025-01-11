import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/info_taking/choose_language/business_logic/choose_language_cubit.dart';
import 'package:vocabulary/features/info_taking/choose_language/presentation/widgets/country_widget.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseLanguageCubit, ChooseLanguageStates>(
      builder: (context, state) {
        ChooseLanguageCubit cubit = BlocProvider.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Choose the language you want to learn",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: cubit.countries
                            .map((e) => CountryWidget(
                                country: e,
                                onTap: (country) {
                                  cubit.updateSelectedLanguage(country);
                                }))
                            .toList(),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: cubit.isAnySelected ? (){

                    } : null,
                    disabledColor: Colors.blue.shade200,
                    minWidth: double.infinity,
                    color: linkColor,
                    textColor: Colors.white,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
