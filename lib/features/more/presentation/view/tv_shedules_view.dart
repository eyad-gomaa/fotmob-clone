import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/tv_shedules_view_body.dart';
import 'package:gap/gap.dart';

class TvShedulesView extends StatefulWidget {
  const TvShedulesView({super.key});

  @override
  State<TvShedulesView> createState() => _TvShedulesViewState();
}

class _TvShedulesViewState extends State<TvShedulesView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.settings),
          Gap(20),
        ],
        centerTitle: true,
        title: const Text(
          "Tv schedules",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        bottom: TabBar(
          padding: const EdgeInsets.only(bottom: 10),
          controller: _tabController,
          tabs: const [CustomTab(tabTitle: "today")],
        ),
      ),
      body: const TvShedulesViewBody(),
    );
  }
}
