import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/following/presentation/view/team_view.dart';
import 'package:fotmob_clone/features/home/presentation/view/home_view.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/league_data_view.dart';
import 'package:fotmob_clone/features/matches/presentation/view/match_data_view.dart';
import 'package:fotmob_clone/features/more/presentation/view/transfer_center_view.dart';
import 'package:fotmob_clone/features/more/presentation/view/tv_shedules_view.dart';
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
  static const String transferCenterView = "/transferCenterView";
  static const String tvShedulesView = "/tvShedulesView";
}

CustomTransitionPage buildPageWithFadeTransition<T>({
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

CustomTransitionPage buildPageWithSlideTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Animation<Offset> slideAnimation = Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation);

      return SlideTransition(
        position: slideAnimation,
        child: child,
      );
    },
  );
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RouterPath.onBoardingView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const OnBoardingView()); 
      },
    ),
    GoRoute(
      path: RouterPath.followView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const FollowView()); 
      },
    ),
    GoRoute(
      path: RouterPath.reviewLeaguesView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const ReviewLeaguesView()); 
      },
    ),
    GoRoute(
      path: RouterPath.homeView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const HomeView()); 
      },
    ),
    GoRoute(
      path: RouterPath.matchDataView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const MatchDataView()); 
      },
    ),
    GoRoute(
      path: RouterPath.leagueDataView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const LeagueDataView()); 
      },
    ),
    GoRoute(
      path: RouterPath.teamView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const TeamView());
      },
    ),
    GoRoute(
      path: RouterPath.transferCenterView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const TransferCenterView());
      },
    ),
    GoRoute(
      path: RouterPath.tvShedulesView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithSlideTransition(
            context: context, state: state, child: const TvShedulesView());
      },
    ),
  ],
);
