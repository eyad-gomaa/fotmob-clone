import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/following_view_body.dart';

class FollowingView extends StatefulWidget {
  const FollowingView({super.key});

  @override
  State<FollowingView> createState() => _FollowingViewState();
}

class _FollowingViewState extends State<FollowingView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                title: const Text(
                  "Leagues",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                pinned: true,
                floating: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(kTextTabBarHeight + 10),
                  child: TabBar(
                    padding: const EdgeInsets.only(bottom: 10),
                    dividerHeight: 0,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                      color: ColorManager.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    controller: _controller,
                    enableFeedback: false,
                    tabs: const [
                      CustomTab(
                        tabTitle: 'Teams',
                      ),
                      CustomTab(
                        tabTitle: 'Players',
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: FollowingViewBody(
            controller: _controller,
          )),
    );
  }
}
