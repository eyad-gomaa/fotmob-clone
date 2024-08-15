import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/post_data.dart';
import 'package:gap/gap.dart';

class ColumnPost extends StatelessWidget {
  const ColumnPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("assets/images/sports.jpeg")),
          const Gap(15),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const Gap(10),
          const PostData(),
        ],
      ),
    );
  }
}
