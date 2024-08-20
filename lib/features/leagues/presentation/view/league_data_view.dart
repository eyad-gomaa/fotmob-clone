import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fotmob_clone/features/leagues/presentation/manager/cubit/table_state_cubit.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/league_data_view_body.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/table_tab.dart';

class LeagueDataView extends StatefulWidget {
  const LeagueDataView({super.key});

  @override
  State<LeagueDataView> createState() => _LeagueDataViewState();
}

class _LeagueDataViewState extends State<LeagueDataView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TableStateCubit(),
      child: Scaffold(
        body: LeagueDataViewBody(
          tabs: const [
            TableTab(),
            TableTab(),
            TableTab(),
            TableTab(),
            TableTab(),
            TableTab(),
            TableTab(),
          ],
          controller: _controller,
        ),
      ),
    );
  }
}
