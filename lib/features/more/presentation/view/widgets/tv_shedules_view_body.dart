import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class TvShedulesViewBody extends StatelessWidget {
  const TvShedulesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const TvSheduleContainer(),
      ),
    );
  }
}

class TvSheduleContainer extends StatelessWidget {
  const TvSheduleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPath.matchDataView);
      },
      child: Column(
        children: [
          const Gap(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "10:00PM",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Live",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.green),
                  )
                ],
              ),
              const VerticalDivider(
                thickness: 0.2,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/ahly.png"),
                        ),
                        const Gap(10),
                        const Text(
                          "Dyanmo Kyiv",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    const Gap(5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                          child: Image.asset("assets/images/ahly.png"),
                        ),
                        const Gap(10),
                        const Text(
                          "Dyanmo Kyiv",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    const Text(
                      "In this display, width determines the horizontal length of the line",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            thickness: 0.2,
          )
        ],
      ),
    );
  }
}
