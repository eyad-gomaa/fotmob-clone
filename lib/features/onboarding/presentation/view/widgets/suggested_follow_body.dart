import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/local_follow_body.dart';

class SuggestedFollowBody extends StatelessWidget {
  const SuggestedFollowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => FollowListItem(
          following: index % 2 == 0 ? true : false,
        ),
      ),
    );
  }
}
