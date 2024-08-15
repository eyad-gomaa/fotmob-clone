import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:gap/gap.dart';

class PostData extends StatelessWidget {
  const PostData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_filled,
          size: 15,
          color: ColorManager.primaryColor,
        ),
        const Gap(5),
        const Text(
          "FotMob - 1 hour ago",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
