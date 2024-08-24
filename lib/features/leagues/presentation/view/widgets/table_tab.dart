import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/custom_table.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/table_state_buttons.dart';
import 'package:gap/gap.dart';

class TableTab extends StatelessWidget {
  const TableTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const [
        TableStateButtons(),
        Gap(10),
        CustomTable(),
        CustomTable(),
        CustomTable(),
      ],
    );
  }
}
