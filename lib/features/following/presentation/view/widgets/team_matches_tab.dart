import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:gap/gap.dart';

class TeamMatchesTab extends StatefulWidget {
  const TeamMatchesTab({super.key});

  @override
  State<TeamMatchesTab> createState() => _TeamMatchesTabState();
}

class _TeamMatchesTabState extends State<TeamMatchesTab> {
  final GlobalKey _upcomingMatchesKey = GlobalKey();
  final GlobalKey _completedMatchesKey = GlobalKey();
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Set the initial scroll offset directly after the frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToGap();
    });
  }

  void _scrollToGap() {
    // Get the RenderBox for each widget
    final RenderBox upcomingMatchesBox =
        _upcomingMatchesKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox completedMatchesBox =
        _completedMatchesKey.currentContext!.findRenderObject() as RenderBox;

    // Calculate the position of the gap
    final double upcomingMatchesHeight = upcomingMatchesBox.size.height;
    final double completedMatchesHeight = completedMatchesBox.size.height;

    final double gapOffset =
        (upcomingMatchesHeight + completedMatchesHeight) / 2 -
            20; // Assuming 20 is the gap height

    // Scroll to the calculated offset
    _scrollController.jumpTo(gapOffset);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        controller: _scrollController, // Attach the ScrollController
        child: Column(
          children: [
            const Gap(10),
            Container(
              key: _upcomingMatchesKey, // Assign key to widget
              child: const TeamUpcomingMatches(),
            ),
            const Gap(20),
            Container(
              key: _completedMatchesKey, // Assign key to widget
              child: const TeamCompletedMatch(),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamCompletedMatch extends StatelessWidget {
  const TeamCompletedMatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Completed Matches",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              itemCount: 20,
              shrinkWrap:
                  true, // Important to make ListView compatible within a Column
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sun, 25 Aug",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        Text("Completed",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Al Ahly"),
                      const Gap(5),
                      SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png"),
                      ),
                      const Gap(10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              Text("2"),
                              Text(" - "),
                              Text("0"),
                            ],
                          ),
                        ),
                      ),
                      const Gap(10),
                      SizedBox(
                          height: 30,
                          child: Image.asset("assets/images/ahly.png")),
                      const Gap(5),
                      const Text("Al Ahly"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamUpcomingMatches extends StatelessWidget {
  const TeamUpcomingMatches({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Upcoming Matches",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              itemCount: 20,
              shrinkWrap:
                  true, // Important to make ListView compatible within a Column
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sun, 25 Aug",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        Text("Next match",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Al Ahly"),
                      const Gap(5),
                      SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png"),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("6:30",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          Text("PM",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const Gap(10),
                      SizedBox(
                          height: 30,
                          child: Image.asset("assets/images/ahly.png")),
                      const Gap(5),
                      const Text("Al Ahly"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
