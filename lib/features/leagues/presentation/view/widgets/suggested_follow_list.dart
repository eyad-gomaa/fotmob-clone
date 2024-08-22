import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/rectangle_follow_container.dart';

class SuggestedFollowList extends StatelessWidget {
  const SuggestedFollowList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Suggested",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Don't show again",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ColorManager.primaryColor),
            ),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              const CustomRectangleFollowContainer(),
        )
      ],
    );
  }
}
