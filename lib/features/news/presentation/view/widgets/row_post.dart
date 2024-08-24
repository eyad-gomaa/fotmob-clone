import 'package:flutter/material.dart';
import 'package:fotmob_clone/core/utils/app_router.dart';
import 'package:fotmob_clone/features/leagues/presentation/view/widgets/post_data.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RowPost extends StatelessWidget {
  const RowPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPath.newsWebView);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                    width: 120,
                    height: 70,
                    child: Image.asset(
                      "assets/images/foot.jpeg",
                      fit: BoxFit.cover,
                    )),
              ),
              const Gap(10),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "It is a long established fact that a reader will be distracted.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    PostData(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
