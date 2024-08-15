import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/following_view.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/leagues_view.dart';
import 'package:fotmob_clone/features/matches/presentation/view/matches_view.dart';
import 'package:fotmob_clone/features/more/presentation/view/more_view.dart';
import 'package:fotmob_clone/features/news/presentation/view/news_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  List<Widget> homePages = [
    const MatchesView(),
    const NewsView(),
    const LeaguesView(),
    const FollowingView(),
    const MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.military_tech_rounded,
              ),
              label: "matches",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper_rounded,
              ),
              label: "News",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet,
                ),
                label: "Leagues"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.military_tech_rounded,
                ),
                label: "Following"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: "more"),
          ],
        ),
        body: homePages[_selectedIndex]);
  }
}
