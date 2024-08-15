import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/matches/presentation/view/widgets/custom_match_item.dart';
import 'package:gap/gap.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ExpansionTile(
        minTileHeight: 20,
        backgroundColor: Color.fromARGB(255, 82, 38, 225),
        collapsedShape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        collapsedBackgroundColor: Color.fromARGB(255, 82, 38, 225),
        collapsedIconColor: Colors.white,
        

        title: Row(
          children: [
            Icon(Icons.access_alarm_outlined,color: Colors.white,),
            Gap(10),
            Text(
              "club friendlies",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        children: [
          Hero(
            tag: "matchItemTag",
            child: MatchItem()),
          MatchItem(),
          MatchItem(),
          MatchItem(),
        ],
      ),
    );
  }
}
