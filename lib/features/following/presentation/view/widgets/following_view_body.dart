import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/teams_tab.dart';

class FollowingViewBody extends StatelessWidget {
  const FollowingViewBody({super.key, required this.controller});
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: const [
        TeamsTab(),
        TeamsTab(),
      ],
    );
  }
}
