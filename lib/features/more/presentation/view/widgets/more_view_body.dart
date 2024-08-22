import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/core/utils/theme/dark_theme.dart';
import 'package:fotmob_clone/features/home/presentation/manager/cubit/theme_cubit.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Gap(20),
          BasicSettingsContainer(
            title: "Transfer Center",
            icon: const Icon(Icons.swap_vert_circle_outlined),
            onTap: () {
              GoRouter.of(context).push(RouterPath.transferCenterView);
            },
          ),
          const Gap(20),
          SettingsListTileDecoration(
            listTile: ListTile(
              onTap: () {
                GoRouter.of(context).push(RouterPath.tvShedulesView);
              },
              leading: const Icon(Icons.abc),
              title: const Text(
                "Tv schedules",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Middle East",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const Gap(20),
          SettingsListTileDecoration(
            listTile: ListTile(
              leading: const Icon(Icons.abc),
              title: const Text(
                "Dark Theme",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: BlocBuilder<ThemeCubit, ThemeData>(
                builder: (context, state) {
                  return Switch(
                    value:
                        BlocProvider.of<ThemeCubit>(context).state == darkTheme,
                    onChanged: (value) {
                      BlocProvider.of<ThemeCubit>(context).toggleTheme();
                    },
                    activeColor: ColorManager.primaryColor,
                  );
                },
              ),
            ),
          ),
          const Gap(20),
          BasicSettingsContainer(
            title: "Share",
            icon: const Icon(Icons.share),
            onTap: ()  {
            },
          ),
          const Gap(20),
        ],
      ),
    );
  }
}

class BasicSettingsContainer extends StatelessWidget {
  const BasicSettingsContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final Icon icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SettingsListTileDecoration(
        listTile: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class SettingsListTileDecoration extends StatelessWidget {
  const SettingsListTileDecoration({
    super.key,
    required this.listTile,
  });
  final ListTile listTile;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(15)),
        child: listTile);
  }
}
