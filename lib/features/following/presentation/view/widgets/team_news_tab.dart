import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/column_post.dart';

class TeamNewsTab extends StatelessWidget {
  const TeamNewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => const ColumnPost(),
      ),
    );
  }
}
