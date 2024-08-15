import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/news_view_body.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: const Text(
                "News",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              pinned: true,
              floating: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kTextTabBarHeight + 10),
                child: TabBar(
                  padding: const EdgeInsets.only(bottom: 10),
                  labelPadding: const EdgeInsets.all(0),
                  dividerHeight: 0,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    color: ColorManager.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  tabAlignment: TabAlignment.start,
                  controller: _controller,
                  isScrollable: true,
                  tabs: const [
                    CustomTab(
                      tabTitle: 'For You',
                    ),
                    CustomTab(
                      tabTitle: 'Latest',
                    ),
                    CustomTab(
                      tabTitle: 'Transfers',
                    ),
                    CustomTab(
                      tabTitle: 'Leagues',
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: NewsViewBody(
          controller: _controller,
        ),
      ),
    );
  }
}



// appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: const Text(
//             "News",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           bottom: TabBar(
//               padding: const EdgeInsets.only(bottom: 10),
//               indicator: BoxDecoration(
//                 color: ColorManager.primaryColor,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               controller: _controller,
//               isScrollable: true,
//               tabAlignment: TabAlignment.start,
//               indicatorColor: ColorManager.primaryColor,
//               labelColor: Colors.white,
//               tabs: const [
//                 CustomTab(
//                   tabTitle: 'For You',
//                 ),
//                 CustomTab(
//                   tabTitle: 'Latest',
//                 ),
//                 CustomTab(
//                   tabTitle: 'Transfers',
//                 ),
//                 CustomTab(
//                   tabTitle: 'Leagues',
//                 ),
//               ]),
//         ),
//         body: NewsViewBody(
//           controller: _controller,
//         )