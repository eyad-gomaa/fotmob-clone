import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/custom_square_follow_container.dart';
import 'package:gap/gap.dart';

class TeamsTab extends StatelessWidget {
  const TeamsTab({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.sizeOf(context).width ~/ 180;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(20),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 170,
            height: 170,
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox(
                              height: 50,
                              child: Image.asset(
                                "assets/images/egyptian-flag.png",
                                fit: BoxFit.cover,
                              ))),
                    ),
                    const Gap(10),
                    const Text(
                      "Egypt",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cape Verde"),
                    Text("Fri, 06 at 10:00PM"),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 1.3),
              itemBuilder: (context, index) =>
                  const CustomSquareFollowContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
