import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:gap/gap.dart';

class MatchH2hTab extends StatelessWidget {
  const MatchH2hTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Container(
            decoration: defaultContainerDecoration(context),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 30,
                          child: Image.asset("assets/images/ahly.png")),
                      const Text(
                        "Previous match (24)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                          height: 30,
                          child: Image.asset("assets/images/ahly.png")),
                    ],
                  ),
                  const Gap(20),
                  const MultiValueIndicator(
                    value1: 30,
                    value2: 20,
                    value3: 50,
                    color1: Colors.yellow,
                    color2: Color.fromARGB(221, 81, 81, 81),
                    color3: Colors.blue,
                  ),
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PreviousMatchesStatisticsConatiner(
                        number: 11,
                        title: 'Won',
                        percent: 46,
                        containerColor: Colors.yellow,
                        numberColor: Colors.black,
                      ),
                      PreviousMatchesStatisticsConatiner(
                        number: 6,
                        title: 'Draw',
                        percent: 25,
                        containerColor: Color.fromARGB(255, 77, 77, 77),
                      ),
                      PreviousMatchesStatisticsConatiner(
                        number: 7,
                        title: 'Won',
                        percent: 29,
                        containerColor: Color.fromARGB(255, 21, 108, 179),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Gap(10),
          const SeasonSoFarTable(),
        ],
      ),
    );
  }
}

class SeasonSoFarTable extends StatelessWidget {
  const SeasonSoFarTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: defaultContainerDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 30, child: Image.asset("assets/images/ahly.png")),
                const Text(
                  "Season so far",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                    height: 30, child: Image.asset("assets/images/ahly.png")),
              ],
            ),
            const Divider(
              thickness: 0.1,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Premier League",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
              child: Divider(
                thickness: 0.1,
              ),
            ),
            const Column(
              children: [
                SeasonSoFarRow(
                  right: "14th",
                  center: "Table posisiton",
                  left: "6th",
                ),
                SeasonSoFarRow(
                  right: "14th",
                  center: "Table posisiton",
                  left: "6th",
                ),
                SeasonSoFarRow(
                  right: "14th",
                  center: "Table posisiton",
                  left: "6th",
                ),
                SeasonSoFarRow(
                  right: "14th",
                  center: "Table posisiton",
                  left: "6th",
                ),
                SeasonSoFarRow(
                  right: "14th",
                  center: "Table posisiton",
                  left: "6th",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SeasonSoFarRow extends StatelessWidget {
  const SeasonSoFarRow({
    super.key,
    required this.right,
    required this.center,
    required this.left,
  });
  final String right;
  final String center;
  final String left;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            right,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Text(
            center,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 21, 108, 179),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              left,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class PreviousMatchesStatisticsConatiner extends StatelessWidget {
  const PreviousMatchesStatisticsConatiner({
    super.key,
    required this.number,
    required this.title,
    required this.percent,
    required this.containerColor,
    this.numberColor,
  });
  final int number;
  final String title;
  final int percent;
  final Color containerColor;
  final Color? numberColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: numberColor ?? Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Gap(10),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17),
            ),
            Text(
              "$percent%",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}

class MultiValueIndicator extends StatelessWidget {
  const MultiValueIndicator({
    super.key,
    required this.value1,
    required this.value2,
    required this.value3,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  final double value1;
  final double value2;
  final double value3;
  final Color color1;
  final Color color2;
  final Color color3;
  final double borderRadius = 50;
  final double height = 6.0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Row(
        children: [
          Expanded(
            flex: (value1 * 100).toInt(),
            child: Container(
              height: height,
              color: color1,
            ),
          ),
          Expanded(
            flex: (value2 * 100).toInt(),
            child: Container(
              height: height,
              color: color2,
            ),
          ),
          Expanded(
            flex: (value3 * 100).toInt(),
            child: Container(
              height: height,
              color: color3,
            ),
          ),
        ],
      ),
    );
  }
}
