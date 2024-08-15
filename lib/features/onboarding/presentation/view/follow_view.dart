import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/local_follow_body.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/suggested_follow_body.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FollowView extends StatefulWidget {
  const FollowView({super.key});

  @override
  State<FollowView> createState() => _FollowViewState();
}

class _FollowViewState extends State<FollowView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kTextTabBarHeight + 10),
            child: Theme(
                data: Theme.of(context).copyWith(
                  tabBarTheme: const TabBarTheme(
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
                child: TabBar(
                  dividerHeight: 0,
                  padding: const EdgeInsets.only(bottom: 10),
                  indicator: BoxDecoration(
                    color: ColorManager.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  controller: _controller,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: Colors.white,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0), // Adjust horizontal padding
                        child: const Text("Local"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0), // Adjust horizontal padding
                        child: const Text("Suggested"),
                      ),
                    ),
                  ],
                )),
          ),
          title: const Text("Follow Teams"),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: const [LocalFollowBody(), SuggestedFollowBody()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 70,
                      child: LinearProgressIndicator(
                        value: _selectedIndex + 1 / 2,
                        color: ColorManager.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      )),
                  const Gap(30),
                  GestureDetector(
                    onTap: () {
                      if (_selectedIndex != 1) {
                        _controller.animateTo(_selectedIndex + 1);
                        _selectedIndex += 1;
                        setState(() {});
                      } else {
                        GoRouter.of(context).push(RouterPath.homeView);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorManager.primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
