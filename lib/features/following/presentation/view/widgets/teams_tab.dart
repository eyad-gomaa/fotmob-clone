import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/custom_square_follow_container.dart';

class TeamsTab extends StatelessWidget {
  const TeamsTab({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.sizeOf(context).width ~/ 180;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 1.3),
        itemBuilder: (context, index) => const CustomSquareFollowContainer(),
      ),
    );
  }
}