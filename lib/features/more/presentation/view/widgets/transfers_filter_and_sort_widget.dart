import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/widgets/overview_tab.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/filter_widgets/transfers_filter_bottom_sheet.dart';
import 'package:gap/gap.dart';

class FilterAndSort extends StatelessWidget {
  const FilterAndSort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: defaultContainerDecoration(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "All Transfers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(),
              );
            },
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      scrollControlDisabledMaxHeightRatio:
                          MediaQuery.sizeOf(context).height,
                      builder: (context) => const FilterBottomSheet(),
                    );
                  },
                  child: const Row(
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded,
                          color: Colors.grey)
                    ],
                  ),
                ),
                const Gap(15),
                const Row(
                  children: [
                    Text(
                      "Sort",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}