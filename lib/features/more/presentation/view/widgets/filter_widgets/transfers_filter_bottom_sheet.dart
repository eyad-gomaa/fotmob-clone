import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/filter_widgets/include_transfer_form.dart';
import 'package:fotmob_clone/features/more/presentation/view/widgets/filter_widgets/league_and_teams.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String _transferType = "all";
  String _others = "contract";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Filter",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                value: 'all',
                groupValue: _transferType,
                onChanged: (value) {
                  setState(() {
                    _transferType = value!;
                  });
                },
                title: const Text('All transfers'),
              ),
              const Divider(
                height: 0,
                thickness: 0.2,
              ),
              RadioListTile(
                contentPadding: const EdgeInsets.all(0),
                value: 'top',
                groupValue: _transferType,
                onChanged: (value) {
                  setState(() {
                    _transferType = value!;
                  });
                },
                title: const Text('Top Transfers'),
              ),
              const Divider(
                height: 0,
                thickness: 0.2,
              ),
              const LeaguesAndTeams(),
              const Divider(
                height: 10,
                thickness: 0.2,
              ),
              const IncludeTransferForm(),
              const Gap(10),
              Column(
                children: [
                  const Text(
                    "Others",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RadioListTile(
                    contentPadding: const EdgeInsets.all(0),
                    value: 'contract',
                    groupValue: _others,
                    onChanged: (value) {
                      setState(() {
                        _others = value!;
                      });
                    },
                    title: const Text('Contract extensions'),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
