import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/post_data.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ColumnPost extends StatelessWidget {
  const ColumnPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPath.newsWebView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("assets/images/sports.jpeg"),
                ),
                const Gap(10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Gap(10),
                    PostData()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

















// Container(
//       constraints: const BoxConstraints(maxWidth: 500),
//       child: Column(
//         children: [
//           Container(
//       constraints: const BoxConstraints(maxWidth: 500),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   "assets/images/sports.jpeg",
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           const Gap(15),
//           Container(
//             constraints: const BoxConstraints(maxWidth: 500),
//             child: const Text(
//               "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//               style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Gap(10),
//           Container(
//             constraints: const BoxConstraints(maxWidth: 500),
//             child: const PostData()),
//         ],
//       ),
//     );