import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vocabulary/features/on_boarding/on_boarding/business_logic/on_boarding_cubit.dart';

import 'dotted_widget.dart';

class OnBoardingCarouselSlider extends StatelessWidget {
  const OnBoardingCarouselSlider({
    super.key,
    required this.pageViewController,
  });

  final PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    OnBoardingCubit cubit = context.watch<OnBoardingCubit>();
    return  Expanded(
      child: PageView(
        controller: pageViewController,
        onPageChanged: (pageIndex) => cubit.changeIndex(pageIndex),
        children: cubit.onBoardingSliders.map((entry) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/${entry.imagePath}",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                entry.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8,
                ),
                child: Text(
                  entry.subTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              DottedWidget(
                totalSlides: cubit.onBoardingSliders.length,
                currentIndex: cubit.currentIndex,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
