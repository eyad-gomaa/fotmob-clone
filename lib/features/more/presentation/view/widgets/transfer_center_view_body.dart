import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/transfers_filter_and_sort_widget.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/transfers_list.dart';
import 'package:gap/gap.dart';

class TransferCenterViewBody extends StatelessWidget {
  const TransferCenterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverGap(10),
          SliverToBoxAdapter(
            child: FilterAndSort(),
          ),
          SliverGap(10),
          TransfersList(),
        ],
      ),
    );
  }
}
