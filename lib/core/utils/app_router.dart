import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/team_view.dart';
import 'package:fotmob_clone/features/home/presentation/view/home_view.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/league_data_view.dart';
import 'package:fotmob_clone/features/matches/presentation/view/match_data_view.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/follow_view.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/review_leagues_view.dart';
import 'package:go_router/go_router.dart';

class RouterPath {
  static const String onBoardingView = "/";
  static const String followView = "/followView";
  static const String homeView = "/homeView";
  static const String reviewLeaguesView = "/reviewLeaguesView";
  static const String matchDataView = "/matchDataView";
  static const String leagueDataView = "/leagueDataView";
  static const String teamView = "/teamView";
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouterPath.onBoardingView,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingView();
      },
    ),
    GoRoute(
      path: RouterPath.followView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const FollowView());
      },
    ),
    GoRoute(
      path: RouterPath.reviewLeaguesView,
      builder: (BuildContext context, GoRouterState state) {
        return const ReviewLeaguesView();
      },
    ),
    GoRoute(
      path: RouterPath.homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: RouterPath.matchDataView,
      builder: (BuildContext context, GoRouterState state) {
        return const MatchDataView();
      },
    ),
    GoRoute(
      path: RouterPath.leagueDataView,
      builder: (BuildContext context, GoRouterState state) {
        return const LeagueDataView();
      },
    ),
    GoRoute(
      path: RouterPath.teamView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
            context: context, state: state, child: const TeamView());
      },
    ),
  ],
);
