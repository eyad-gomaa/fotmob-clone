import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FollowingList extends StatelessWidget {
  const FollowingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Following",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: ColorManager.primaryColor),
            ),
            Text(
              "Edit",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ColorManager.primaryColor),
            ),
          ],
        ),
        ReorderableListView.builder(
          onReorder: (oldIndex, newIndex) {
            // Implement reorder logic here
          },
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            key: ValueKey(index),
            onTap: () {
              GoRouter.of(context).push(RouterPath.leagueDataView);
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png"),
                      ),
                      const Gap(10),
                      const Text(
                        "AL Ahly",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
