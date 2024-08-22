import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/filter_widgets/second_filter_sheet.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/transfer_center_view_body.dart';
import 'package:gap/gap.dart';

class LeaguesAndTeams extends StatelessWidget {
  const LeaguesAndTeams({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Leagues and terms",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SlideTransition(
                    position: ModalRoute.of(context)!.animation!.drive(
                          Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                              .chain(
                            CurveTween(curve: Curves.easeInOut),
                          ),
                        ),
                    child: const SecondFilterBottomSheet(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
            )
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(
                      height: 20, child: Image.asset("assets/images/ahly.png")),
                  const Text(
                    "Al Ahly",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const Gap(10),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Text(
                  "+6",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ))
          ],
        ),
        const Gap(10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                FontAwesomeIcons.circleXmark,
                size: 16,
                color: Colors.red,
              ),
              Gap(5),
              Text(
                "clear",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
              )
            ],
          ),
        ),
        const Gap(10),
      ],
    );
  }
}
