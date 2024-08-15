import 'package:flutter/material.dart';

import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/post_data.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/section_title.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/row_post.dart';
import 'package:gap/gap.dart';

class ForyouTab extends StatelessWidget {
  const ForyouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Gap(20),
                const SectionTitle(
                  title: 'Trending',
                  icon: Icons.analytics,
                ),
                const Gap(20),
                Container(
                  width: MediaQuery.sizeOf(context)
                      .width, // Adjust the width as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/sports.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(0.5),
                                Colors.transparent
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'It is a long established fact that a reader will be distracted.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SliverGap(20),
          SliverList.builder(
            itemCount: 5,
            itemBuilder: (context, index) => const RowPost(),
          ),
          const SliverToBoxAdapter(
              child: SectionTitle(title: "Must reads", icon: Icons.save)),
          const SliverGap(20),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: 200,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset(
                            "assets/images/sports.jpeg",
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "It is a long established fact that a reader will .",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Gap(4),
                                PostData()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(
                  title: "Don't miss",
                  icon: Icons.ac_unit_outlined,
                ),
                const Gap(20),
                const Text("Today"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Atletico Madrid",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png")),
                    const Gap(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("4:00"),
                        Text("PM"),
                      ],
                    ),
                    const Gap(10),
                    SizedBox(
                        height: 30,
                        child: Image.asset("assets/images/ahly.png")),
                    const Text(
                      "Atletico Madrid",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
