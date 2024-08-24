import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:go_router/go_router.dart';

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
          color: ColorManager.primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
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
