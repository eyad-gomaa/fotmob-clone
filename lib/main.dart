import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/features/home/presentation/manager/cubit/theme_cubit.dart';



void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit()..getValue(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: BlocProvider.of<ThemeCubit>(context).selectedTheme(),
            routerConfig: router,
          );
        },
      ),
    );
  }
}
