import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MatchItem extends StatelessWidget {
  const MatchItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPath.matchDataView);
      },
      child: Container(
        color: const Color.fromARGB(255, 70, 33, 193),
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(Icons.abc),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    ),
                    Gap(5),
                    Icon(
                      Icons.ac_unit_sharp,
                    ),
                    Gap(5),
                    Text(
                      "2 - 1",
                      style: TextStyle(color: Colors.white),
                    ),
                    Gap(5),
                    Icon(Icons.ac_unit_sharp),
                    Gap(5),
                    Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
