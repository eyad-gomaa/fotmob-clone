import 'package:flutter/material.dart';

class LeagueDataViewFlexableSpace extends StatelessWidget {
  const LeagueDataViewFlexableSpace({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          child: Image.asset(img),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Premier League",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Egypt",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
