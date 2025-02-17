import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';
import 'package:vocabulary/features/home/business_logic/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "Vocabulary",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: CarouselSlider.builder(
                    itemCount: cubit.vocabularies.length,
                    itemBuilder: (context, index, realIndex) {
                      final word = cubit.vocabularies[index];
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: linkColor,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRoutes.vocabularyDetails,
                              arguments: word.word,
                            );
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  word.word,
                                  style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  word.definition,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  word.exampleSentence,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      enableInfiniteScroll: true,
                      autoPlay: false,
                      viewportFraction: 1.0,
                    ),
                  ),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/wave.svg",
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
