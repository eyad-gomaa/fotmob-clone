import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/news_webview_body.dart';
import 'package:gap/gap.dart';
import 'package:share_plus/share_plus.dart';

class NewsWebView extends StatelessWidget {
  const NewsWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Share.share('check out my website https://example.com');
              },
              child: const Icon(Icons.ios_share_outlined)),
          const Gap(20),
        ],
      ),
      body: const NewsWebviewBody(),
    );
  }
}
