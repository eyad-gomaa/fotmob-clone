import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:go_router/go_router.dart';

class SecondFilterBottomSheet extends StatefulWidget {
  const SecondFilterBottomSheet({super.key});

  @override
  State<SecondFilterBottomSheet> createState() =>
      _SecondFilterBottomSheetState();
}

late String _league;

class _SecondFilterBottomSheetState extends State<SecondFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              const Text(
                "Leagues",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                  checkboxShape: const CircleBorder(),
                  value: true,
                  
                  title: const Text(
                    "Division",
                    textAlign: TextAlign.end,
                  ),
                  subtitle: const Text(
                    "croatia",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.end,
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
