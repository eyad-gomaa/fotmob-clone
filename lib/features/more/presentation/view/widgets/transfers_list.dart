import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:gap/gap.dart';

class TransfersList extends StatelessWidget {
  const TransfersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: TransferContainer(),
      ),
    );
  }
}


class TransferContainer extends StatelessWidget {
  const TransferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: defaultContainerDecoration(context),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/avatar.jpg"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("CM"),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const Text(
                "Julian Justvan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Hoffenheim"),
                  const Gap(5),
                  SizedBox(
                    height: 20,
                    child: Image.asset("assets/images/ahly.png"),
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: ColorManager.primaryColor,
                  ),
                  SizedBox(
                    height: 20,
                    child: Image.asset("assets/images/ahly.png"),
                  ),
                  const Gap(5),
                  const Text("Hoffenheim"),
                ],
              ),
              const Gap(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Fee \$1.1M"),
                  Gap(10),
                  Text("contract Aug 2024 - jun 2027"),
                ],
              ),
              const Text("Market value \$1.8M"),
            ],
          ),
        ),
        const Positioned(
          right: 20,
          top: 20,
          child: Text(
            "Today",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}