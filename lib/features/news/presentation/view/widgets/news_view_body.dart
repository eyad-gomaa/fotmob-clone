import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/for_you_tab.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/latest_tab.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key, required this.controller});
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: controller, children: const [
      ForyouTab(),
      LatestTab(),
      ForyouTab(),
      ForyouTab(),
    ]);
  }
}
