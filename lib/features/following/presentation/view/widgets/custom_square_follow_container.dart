import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';

class CustomSquareFollowContainer extends StatelessWidget {
  const CustomSquareFollowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 40,
                    child: Image.asset("assets/images/ahly.png")),
                const Gap(10),
                const Text(
                  "AL Ahly",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            left: 5,
            top: 5,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.circlePlus,
                color: ColorManager.primaryColor,
              ),
            ))
      ],
    );
  }
}