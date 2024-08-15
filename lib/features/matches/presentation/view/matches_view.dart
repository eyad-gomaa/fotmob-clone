import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/matches/presentation/view/widgets/matches_view_body.dart';
import 'package:fotmob_clone/features/matches/presentation/view/widgets/search_bottom_sheet.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<Widget> tabs = [
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
    const CustomTab(
      tabTitle: "yesterday",
    ),
  ];
  bool outgoing = false;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotmob"),
        actions: [
          GestureDetector(
              onTap: () {
                showBottomSheet(
                  context: context,
                  builder: (context) =>
                      CalendarBottomSheet(controller: _controller),
                );
              },
              child: const Icon(Icons.calendar_today_outlined)),
          const Gap(10),
          GestureDetector(
              onTap: () {
                showBottomSheet(
                  context: context,
                  builder: (context) => const SearchBottomSheet(),
                );
              },
              child: const Icon(Icons.search)),
          const Gap(10),
          GestureDetector(
            child: outgoing
                ? const Icon(Icons.access_time)
                : const Icon(Icons.access_time_filled),
            onTap: () {
              setState(() {
                if (outgoing) {
                  tabs[_controller.index] = const CustomTab(
                    tabTitle: "outgoing",
                  );
                  outgoing = !outgoing;
                } else {
                  tabs[_controller.index] = const CustomTab(
                    tabTitle: "today",
                  );
                  outgoing = !outgoing;
                }
              });
            },
          ),
          const Gap(10),
        ],
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
                indicatorColor: ColorManager.primaryColor,
                labelColor: Colors.white,
                tabs: tabs),
          ),
        ),
      ),
      body: const MatchesViewBody(),
    );
  }
}

class CalendarBottomSheet extends StatelessWidget {
  const CalendarBottomSheet({
    super.key,
    required TabController controller,
  }) : _controller = controller;

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 17,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  "Close",
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            calendarViewMode: CalendarDatePicker2Mode.scroll,
            scrollViewConstraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height / 2),
          ),
          value: [
            DateTime.now(),
          ],
          onValueChanged: (value) {
            context.pop();
            _controller.animateTo(2);
          },
        ),
      ],
    );
  }
}

class SearchSuffix extends StatelessWidget {
  const SearchSuffix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Cancel",
            style: TextStyle(
              color: ColorManager.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
