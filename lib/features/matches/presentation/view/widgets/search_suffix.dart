import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/manager/color_manager.dart';
import 'package:go_router/go_router.dart';

class SearchSuffix extends StatelessWidget {
  const SearchSuffix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Cancel",
            style: TextStyle(
              color: ColorManager.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
