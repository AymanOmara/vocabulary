import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/presentation/widgets/carousel_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final PageController pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        OnBoardingCubit cubit = BlocProvider.of(context);
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnBoardingCarouselSlider(
                pageViewController: pageViewController,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  color: linkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  onPressed: () async {
                    if (cubit.currentIndex <
                        cubit.onBoardingSliders.length - 1) {
                      pageViewController.nextPage(
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.linear,
                      );
                    } else {
                      cubit.updateFirstLaunch();
                      Navigator.of(context).pushNamed(
                        AppRoutes.chooseLanguageScreen,
                      );
                      // Navigator.of(context).pushNamedAndRemoveUntil(
                      //   AppRoutes.infoTakingScreen,
                      //       (route) => false,
                      // );
                    }
                  },
                  child: Text(
                    cubit.currentIndex >= cubit.onBoardingSliders.length - 1
                        ? "Get Started"
                        : "Next",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
