import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/onboarding/presentation/view/widgets/review_leagues_view_body.dart';

class ReviewLeaguesView extends StatelessWidget {
  const ReviewLeaguesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const Column(
          children: [
            Text("Review your leagues"),
            Expanded(
              child: Text(
                  "Review your leagues Review your leagues Review your leagues Review your leagues Review your leagues"),
            )
          ],
        ),
      ),
      body: const ReviewLeaguesViewBody(),
    );
  }
}
