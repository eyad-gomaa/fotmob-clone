import 'package:flutter/material.dart';

import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/post_data.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/section_title.dart';
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
                // Stack(
                //   alignment: Alignment.bottomCenter,
                //   children: [
                //     ClipRRect(
                //       borderRadius: BorderRadius.circular(15),
                //       child: SizedBox(
                //         width: 450,
                //         height: 250,
                //         child: Image.asset(
                //           "assets/images/sports.jpeg",
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: 450,
                //       height: 250,
                //       decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //           colors: [
                //             Colors.black,
                //             Colors.black.withOpacity(0.8),
                //             Colors.black.withOpacity(0.5),
                //             Colors.black.withOpacity(0.3),
                //             Colors.transparent,
                //             Colors.transparent,
                //           ],
                //           begin: Alignment.bottomCenter,
                //           end: Alignment.topCenter,
                //         ),
                //       ),
                //     ),
                //     const Padding(
                //       padding: EdgeInsets.all(8.0),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           Text(
                //             "It is a long established fact that a reader will It is a long established fact that a reader will.",
                //             maxLines: 2,
                //             overflow: TextOverflow.ellipsis,
                //             style: TextStyle(fontWeight: FontWeight.bold),
                //           ),
                //           Gap(4),
                //           PostData()
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          const SliverGap(20),
          SliverList.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                          width: 120,
                          height: 70,
                          child: Image.asset(
                            "assets/images/foot.jpeg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    const Gap(10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "It is a long established fact that a reader will be distracted.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                size: 15,
                                color: ColorManager.primaryColor,
                              ),
                              const Gap(5),
                              const Text(
                                "FotMob - 1 hour ago",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SectionTitle(title: "Must reads", icon: Icons.save),
                const Gap(20),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                        width: 200,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/sports.jpeg",
                                fit: BoxFit.cover,
                              ),
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
                                        fontWeight: FontWeight.normal),
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
                )
              ],
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
