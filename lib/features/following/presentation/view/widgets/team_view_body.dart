import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/team_matches_tab.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/team_news_tab.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_body.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_flexable_space.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/local_follow_body.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class TeamViewBody extends StatefulWidget {
  const TeamViewBody({super.key});

  @override
  State<TeamViewBody> createState() => _TeamViewBodyState();
}

class _TeamViewBodyState extends State<TeamViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          pinned: true,
          floating: true,
          leadingWidth: 100,
          leading: Row(children: [
            const Gap(10),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            const Gap(30),
          ]),
          actions: const [
            Icon(FontAwesomeIcons.shieldHalved),
            Gap(20),
            Icon(FontAwesomeIcons.bell),
            Gap(20),
            FollowButton(),
            Gap(20),
          ],
        ),
        const SliverAppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
            titlePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            title: LeagueDataViewFlexableSpace(
              img: "assets/images/ahly.png",
            ),
          ),
        ),
        SliverAppBar(
          pinned: true,
          automaticallyImplyLeading: false,
          toolbarHeight: 30,
          flexibleSpace: LeagueDataViewTabBar(
            controller: _controller,
            tabs: const [
              CustomTab(
                tabTitle: 'Overview',
              ),
              CustomTab(
                tabTitle: 'News',
              ),
              CustomTab(
                tabTitle: 'Matches',
              ),
              
            ],
          ),
        ),
        // Use SliverList or SliverFillRemaining for the body content
        SliverFillRemaining(
          child: TabBarView(
            controller: _controller,
            children :const [
              OverviewTab(),
              TeamNewsTab(),
              TeamMatchesTab(),
              // other tabs as necessary
            ],
          ),
        ),
      ],
    );
  }
}
