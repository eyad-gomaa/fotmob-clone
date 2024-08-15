import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/matches/presentation/view/widgets/custom_expansion_tile.dart';

class MatchesViewBody extends StatelessWidget {
  const MatchesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            const CustomExpansionTile(),
        itemCount: 10,
      ),
    );
  }
}
