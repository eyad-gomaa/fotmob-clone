import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_body.dart';
import 'package:fotmob_clone/features/matches/presentation/view/widgets/match_preview_tab.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MatchDataViewBody extends StatefulWidget {
  const MatchDataViewBody({super.key});

  @override
  State<MatchDataViewBody> createState() => _MatchDataViewBodyState();
}

class _MatchDataViewBodyState extends State<MatchDataViewBody>
    with SingleTickerProviderStateMixin {
  late ScrollController _myScrollController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _myScrollController = ScrollController();
    _myScrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _myScrollController.removeListener(_handleScroll);
    _myScrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double offset =
        _myScrollController.hasClients ? _myScrollController.offset : 0.0;
    double opacity = (1 - offset / 50).clamp(0.0, 1.0);
    double gap = (offset >= 30) ? 30 : offset;
    Widget checkForText(Widget widget) {
      if (opacity <= 0) {
        return const SizedBox.shrink();
      } else {
        return widget;
      }
    }

    return CustomScrollView(
      controller: _myScrollController,
      slivers: [
        SliverAppBar(
          forceElevated: false,
          elevation: 0,
          automaticallyImplyLeading: false,
          expandedHeight: 120.0,
          floating: false,
          pinned: true,
          collapsedHeight: 70,
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            expandedTitleScale: 1,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            height: 40,
                            child: Image.asset("assets/images/ahly.png")),
                        const Gap(10),
                        checkForText(
                          Opacity(
                            opacity: opacity,
                            child: const Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        )
                      ],
                    ),
                    Gap(gap),
                    Column(
                      children: [
                        const Text(
                          '8:00PM',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(10),
                        checkForText(
                          Opacity(
                            opacity: opacity,
                            child: const Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        )
                      ],
                    ),
                    Gap(gap),
                    Column(
                      children: [
                        SizedBox(
                            height: 40,
                            child: Image.asset("assets/images/ahly.png")),
                        const Gap(10),
                        checkForText(
                          Opacity(
                            opacity: opacity,
                            child: const Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: defaultContainerDecoration(context)
                    .copyWith(borderRadius: BorderRadius.zero),
                child: LeagueDataViewTabBar(
                  controller: _tabController,
                  tabs: const [
                    CustomTab(tabTitle: "Preview"),
                    CustomTab(tabTitle: "Lineup"),
                    CustomTab(tabTitle: "Table"),
                    CustomTab(tabTitle: "H2H"),
                  ],
                ),
              ),
              // Use Expanded to ensure the TabBarView fills the remaining space
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    MatchPreviewTab(),
                    MatchPreviewTab(),
                    MatchPreviewTab(),
                    MatchPreviewTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
