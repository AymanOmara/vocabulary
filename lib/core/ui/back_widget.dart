import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
        ),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(3.1416),
          child: Image.asset(
            "assets/arrow_right.png",
          ),
        ),
      ),
    );
  }
}
