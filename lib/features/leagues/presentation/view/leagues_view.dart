import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/leagues_view_body.dart';

class LeaguesView extends StatelessWidget {
  const LeaguesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: const Text(
                "Leagues",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              pinned: true,
              floating: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find Leagues",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      fillColor: Theme.of(context).colorScheme.surface,
                      filled: true,
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: const LeaguesViewBody(),
      ),
    );
  }
}
