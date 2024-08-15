import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MatchDataViewBody extends StatefulWidget {
  const MatchDataViewBody({super.key});

  @override
  State<MatchDataViewBody> createState() => _MatchDataViewBodyState();
}

class _MatchDataViewBodyState extends State<MatchDataViewBody> {
  late ScrollController _myScrollController;

  @override
  void initState() {
    super.initState();
    _myScrollController = ScrollController();
    _myScrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _myScrollController.removeListener(_handleScroll);
    _myScrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double opacity = (1 - _myScrollController.offset / 50).clamp(0, 1);
    double gap =
        _myScrollController.offset <= 70 ? _myScrollController.offset : 70;
    print(gap);

    return CustomScrollView(
      controller: _myScrollController,
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 120.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              child: Image.asset("assets/images/ahly.png")),
                          const Gap(10),
                          const Opacity(
                            opacity: 0.5,
                            child: Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      // Gap(gap),
                      const Column(
                        children: [
                          Text(
                            '8:00PM',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(10),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      // Gap(gap),
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              child: Image.asset("assets/images/ahly.png")),
                          const Gap(10),
                           Opacity(
                            opacity: opacity,
                            child: Text(
                              'Athletic club',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('Item #$index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
