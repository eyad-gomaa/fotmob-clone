import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          const NextMatch(),
          const Gap(10),
          const TeamForm(),
          const Gap(10),
          const AudioNews(),
          const Gap(10),
          const SeasonState(),
          const Gap(10),
          const TopPlayers(),
          const Gap(10),
          const HistoricalTablePositions(),
          const Gap(10),
          const Trophies(),
          const Gap(10),
          const Tournaments(),
          const Gap(10),
          Container(
            decoration: defaultContainerDecoration(context),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Stadium",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30,
                              child: Image.asset("assets/images/ahly.png")),
                          const Gap(10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Premier League",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Last Won 2019/2020",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.location_on,
                        color: ColorManager.primaryColor,
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 0.3,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Grass",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Text(
                              "Surface",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Grass",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Text(
                              "Surface",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Grass",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Text(
                              "Surface",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NextMatch extends StatelessWidget {
  const NextMatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Next match",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.only(bottom: 10, top: 20),
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
                const Gap(
                  5,
                ),
                SizedBox(
                  height: 30,
                  child: Image.asset("assets/images/ahly.png"),
                ),
                const Gap(
                  10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("6:30",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("PM",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
                const Gap(
                  10,
                ),
                SizedBox(
                    height: 30, child: Image.asset("assets/images/ahly.png")),
                const Gap(
                  5,
                ),
                const Text("Al Ahly"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tournaments extends StatelessWidget {
  const Tournaments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tournaments",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                child: Image.asset("assets/images/ahly.png"),
              ),
              const Gap(10),
              const Text(
                "Premier League",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Gap(10),
        ],
      ),
    );
  }
}

class AudioNews extends StatelessWidget {
  const AudioNews({
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
            const Text("Audio news",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Gap(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).colorScheme.surfaceBright,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.record_voice_over_outlined),
                        Gap(10),
                        Text(
                          "Audio news",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "2 days ago",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Gap(10),
                        Icon(Icons.play_circle_fill),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Trophies extends StatelessWidget {
  const Trophies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Trophies",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              )
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 30, child: Image.asset("assets/images/ahly.png")),
                  const Gap(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Premier League",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Last Won 2019/2020",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              const Text(
                "19",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              )
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 30, child: Image.asset("assets/images/ahly.png")),
                  const Gap(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Premier League",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Last Won 2019/2020",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              const Text(
                "19",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopPlayers extends StatelessWidget {
  const TopPlayers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      decoration: defaultContainerDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Players",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: TopPlayersContainer(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TeamForm extends StatelessWidget {
  const TeamForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Team form",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                )
              ],
            ),
            const Gap(20),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ColumnMatchResult(
                  myTeamGoals: index,
                  otherTeamGoals: (index / 5 + 3).toInt(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HistoricalTablePositions extends StatelessWidget {
  const HistoricalTablePositions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: defaultContainerDecoration(context),
        height: 160,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Historical table positions",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Gap(10),
            Expanded(
              child: Row(
                children: [
                  const Icon(FontAwesomeIcons.futbol),
                  const Gap(10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.surfaceBright,
                      ),
                      child: LineChart(
                        LineChartData(
                          borderData: FlBorderData(show: false),
                          minX: 0,
                          maxX: 10,
                          minY: 0,
                          maxY: 10,
                          gridData: const FlGridData(
                            show: true,
                            drawHorizontalLine: false,
                          ),
                          titlesData: const FlTitlesData(
                            leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                            topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false)),
                          ),
                          lineBarsData: [
                            LineChartBarData(
                              dotData: const FlDotData(show: false),
                              gradient: LinearGradient(
                                colors: [
                                  ColorManager.primaryColor,
                                  ColorManager.darkPrimaryColor,
                                ],
                              ),
                              spots: [
                                const FlSpot(2, 5),
                                const FlSpot(3, 2),
                                const FlSpot(4, 6),
                                const FlSpot(5, 5),
                                const FlSpot(6, 1),
                              ],
                              barWidth: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class TopPlayersContainer extends StatelessWidget {
  const TopPlayersContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Theme.of(context).colorScheme.surfaceBright,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "FotMob rating",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 0.3,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mohamed",
                        ),
                        Text(
                          "Salah",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "8.45",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 70,
                        child: Image.asset("assets/images/avatar.jpg"))
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Theme.of(context).colorScheme.surfaceBright,
            ),
            child: Column(
              children: [
                const PlayerRatingRow(),
                const Gap(10),
                const PlayerRatingRow(),
                const Gap(10),
                const Divider(
                  thickness: 0.3,
                  color: Colors.black,
                ),
                const Gap(10),
                Text(
                  "See all",
                  style: TextStyle(
                      color: ColorManager.primaryColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerRatingRow extends StatelessWidget {
  const PlayerRatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          const Text("2"),
          const Gap(10),
          CircleAvatar(
            radius: 12,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/avatar.jpg")),
          ),
          const Gap(10),
          const Text("Luis Diaz")
        ],
      ),
      const Text(
        "7.63",
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]);
  }
}

BoxDecoration defaultContainerDecoration(context) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.surface);
}

class SeasonState extends StatelessWidget {
  const SeasonState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.futbol,
                  size: 16,
                ),
                Gap(10),
                Text("Season State",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          TeamPositonOnFootballField(),
        ],
      ),
    );
  }
}

class TeamPositonOnFootballField extends StatelessWidget {
  const TeamPositonOnFootballField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                  height: 472,
                  child: Image.asset(
                    "assets/images/football_field.png",
                    fit: BoxFit.cover,
                  )),
              const Positioned(
                bottom: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayerAvatar(),
                  ],
                ),
              ),
              const Positioned(
                bottom: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PlayerAvatar(),
                    Gap(35),
                    PlayerAvatar(),
                    Gap(35),
                    PlayerAvatar(),
                    Gap(35),
                    PlayerAvatar(),
                  ],
                ),
              ),
              const Positioned(
                bottom: 180,
                child: Row(
                  children: [
                    PlayerAvatar(),
                    Gap(100),
                    PlayerAvatar(),
                  ],
                ),
              ),
              const Positioned(
                bottom: 270,
                child: Row(
                  children: [
                    PlayerAvatar(),
                    Gap(50),
                    PlayerAvatar(),
                    Gap(50),
                    PlayerAvatar(),
                  ],
                ),
              ),
              const Positioned(
                top: 10,
                child: Row(
                  children: [
                    PlayerAvatar(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class PlayerAvatar extends StatelessWidget {
  const PlayerAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 25,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/avatar.jpg")),
            ),
            Positioned(
              right: -15,
              top: -5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("6.6"),
              ),
            )
          ],
        ),
        const Text(
          "Ronaldo",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class ColumnMatchResult extends StatelessWidget {
  const ColumnMatchResult({
    super.key,
    required this.myTeamGoals,
    required this.otherTeamGoals,
  });
  final int myTeamGoals;
  final int otherTeamGoals;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: myTeamGoals > otherTeamGoals ? Colors.green : Colors.red,
                borderRadius: BorderRadius.circular(6)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Text(myTeamGoals.toString()),
                    const Text(" - "),
                    Text(otherTeamGoals.toString()),
                  ],
                )),
          ),
          const Gap(10),
          SizedBox(
            height: 30,
            child: Image.asset("assets/images/ahly.png"),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final int year;
  final int sales;

  SalesData(this.year, this.sales);
}

final data = [
  SalesData(0, 1500000),
  SalesData(1, 1735000),
  SalesData(2, 1678000),
  SalesData(3, 1890000),
  SalesData(4, 1907000),
  SalesData(5, 2300000),
  SalesData(6, 2360000),
  SalesData(7, 1980000),
  SalesData(8, 2654000),
  SalesData(9, 2789070),
  SalesData(10, 3020000),
  SalesData(11, 3245900),
  SalesData(12, 4098500),
  SalesData(13, 4500000),
  SalesData(14, 4456500),
  SalesData(15, 3900500),
  SalesData(16, 5123400),
  SalesData(17, 5589000),
  SalesData(18, 5940000),
  SalesData(19, 6367000),
];
