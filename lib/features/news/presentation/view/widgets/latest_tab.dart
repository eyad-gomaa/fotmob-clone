import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/column_post.dart';

class LatestTab extends StatelessWidget {
  const LatestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const ColumnPost(),
      ),
    );
  }
}
