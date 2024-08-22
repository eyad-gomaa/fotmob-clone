import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/following_list.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/suggested_follow_list.dart';
import 'package:gap/gap.dart';

class LeaguesViewBody extends StatelessWidget {
  const LeaguesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverGap(20),
          SliverToBoxAdapter(
            child: FollowingList(),
          ),
          SliverGap(20),
          SliverToBoxAdapter(
            child: SuggestedFollowList(),
          ),
        ],
      ),
    );
  }
}
