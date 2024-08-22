import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/local_follow_body.dart';
import 'package:gap/gap.dart';

class CustomRectangleFollowContainer extends StatelessWidget {
  const CustomRectangleFollowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                      height: 30, child: Image.asset("assets/images/ahly.png")),
                  const Gap(10),
                  const Text(
                    "AL Ahly",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const FollowButton()
            ],
          ),
        ),
      ),
    );
  }
}