import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxHeight: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FOTMOB",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    "Changing how you follow football.",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const QuickSetupButton(),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already a user?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuickSetupButton extends StatelessWidget {
  const QuickSetupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPath.followView);
      },
      child: Container(
        decoration: BoxDecoration(
            color: ColorManager.primaryColor, borderRadius: BorderRadius.circular(50)),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Quick Setup",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Icon(Icons.arrow_forward_rounded, color: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
