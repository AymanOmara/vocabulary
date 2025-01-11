import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocabulary/core/routing/app_routes.dart';
import 'package:vocabulary/core/ui/theme/colors.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/app_ic.svg",
                      ),
                      Text(
                        "speaker",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/getting_started.svg",
                  ),
                  Text(
                    "Learn a language in 3 minute a day",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                height: 50,
                minWidth: double.infinity,
                textColor: Colors.white,
                color: linkColor,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.onBoardingScreen,
                  );
                },
                child: const Text(
                  "Start Learning",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
