import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/matches/presentation/view/matches_view.dart';
import 'package:gap/gap.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: ColorManager.primaryColor,
              ),
              suffixIcon: const SearchSuffix(),
            ),
          ),
          Divider(
            color: ColorManager.primaryColor,
          ),
          const Gap(5),
          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: ColorManager.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "text",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
          ),
          const Gap(5),
          Divider(
            color: ColorManager.primaryColor,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Popular in Egypt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: StaggeredGrid.extent(
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              maxCrossAxisExtent: 200,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorManager.primaryColor),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.stacked_line_chart_sharp,
                        color: Colors.white,
                      ),
                      Gap(5),
                      Text(
                        "Test text",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorManager.primaryColor),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.stacked_line_chart_sharp,
                        color: Colors.white,
                      ),
                      Gap(5),
                      Text(
                        "Test text",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorManager.primaryColor),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.stacked_line_chart_sharp,
                        color: Colors.white,
                      ),
                      Gap(5),
                      Text(
                        "Test text",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}