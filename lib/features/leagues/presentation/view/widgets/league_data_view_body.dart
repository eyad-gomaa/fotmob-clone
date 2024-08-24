import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_flexable_space.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/local_follow_body.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LeagueDataViewBody extends StatelessWidget {
  const LeagueDataViewBody(
      {super.key, required this.tabs, required this.controller});
  final List<Widget> tabs;
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          floating: true,
          leadingWidth: 230,
          leading: LeagueDataViewLeading(),
          actions: [
            Icon(FontAwesomeIcons.bell),
            Gap(20),
            FollowButton(),
            Gap(20),
          ],
        ),
        const SliverAppBar(
          expandedHeight: 70.0,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
            titlePadding: EdgeInsets.all(20),
            title: LeagueDataViewFlexableSpace(
              img: "assets/images/ahly.png",
            ),
          ),
        ),
        SliverAppBar(
          expandedHeight: 0,
          pinned: true,
          automaticallyImplyLeading: false,
          toolbarHeight: 15,
          flexibleSpace: LeagueDataViewTabBar(
            controller: controller, tabs: const [
        CustomTab(
          tabTitle: 'Table',
        ),
        CustomTab(
          tabTitle: 'Fixtures',
        ),
        CustomTab(
          tabTitle: 'News',
        ),
        CustomTab(
          tabTitle: 'Player stats',
        ),
        CustomTab(
          tabTitle: 'Team stats',
        ),
        CustomTab(
          tabTitle: 'TOTW',
        ),
        CustomTab(
          tabTitle: 'Seasons',
        ),
      ],
          ),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: controller,
            children: tabs,
          ),
        )
      ],
    );
  }
}

class LeagueDataViewTabBar extends StatelessWidget {
  const LeagueDataViewTabBar({
    super.key,
    required TabController controller, required this.tabs,
  }) : _controller = controller;

  final TabController _controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      dividerHeight: 0,
      labelColor: Colors.white,
      indicator: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      tabAlignment: TabAlignment.start,
      controller: _controller,
      isScrollable: true,
      tabs: tabs 
    );
  }
}

class LeagueDataViewLeading extends StatelessWidget {
  const LeagueDataViewLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Gap(10),
      GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded)),
      const Gap(30),
      Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "2023/2024",
              borderRadius: BorderRadius.circular(10),
              iconDisabledColor: Colors.black,
              focusColor: Colors.black,
              dropdownColor: Colors.black,
              iconEnabledColor: Colors.white,
              style: const TextStyle(fontSize: 15),
              padding: const EdgeInsets.all(0),
              items: const [
                DropdownMenuItem(
                  value: "2023/2024",
                  child: Text("2023/2024"),
                )
              ],
              onChanged: (value) {},
            ),
          ),
        ),
      )
    ]);
  }
}

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: FixedColumnWidth(150),
        },
        children: const [
          TableRow(children: [
            Text("#"),
            TableColumnTitle(
              title: 'PL',
            ),
            TableColumnTitle(
              title: 'W',
            ),
            TableColumnTitle(
              title: 'D',
            ),
            TableColumnTitle(
              title: 'L',
            ),
            TableColumnTitle(
              title: '+/-',
            ),
            TableColumnTitle(
              title: 'GD',
            ),
            TableColumnTitle(
              title: 'PTS',
            ),
          ]),
        ],
      ),
    );
  }
}

class TableColumnTitle extends StatelessWidget {
  const TableColumnTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
