import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/home/presentation/manager/cubit/theme_cubit.dart';
import 'package:gap/gap.dart';

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
          const SettingsListTileDecoration(
            listTile: ListTile(
              leading: Icon(Icons.abc),
              title: Text(
                "Theme",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "System default",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const Gap(20),
          SettingsListTileDecoration(
            listTile: ListTile(
              leading: const Icon(Icons.abc),
              title: const Text(
                "Theme",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return Switch(
                    value: BlocProvider.of<ThemeCubit>(context).value!,
                    onChanged: (value) {
                      BlocProvider.of<ThemeCubit>(context).changeTheme();
                    },
                    activeColor: ColorManager.primaryColor,
                  );
                },
              ),
            ),
          ),
          const Gap(20),
          const SettingsListTileDecoration(
            listTile: ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Theme",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Gap(20),
        ],
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
