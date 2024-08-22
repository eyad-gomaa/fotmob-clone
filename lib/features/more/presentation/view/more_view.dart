import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/more_view_body.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const MoreViewBody(),
    );
  }
}
