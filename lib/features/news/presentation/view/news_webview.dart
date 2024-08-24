import 'package:flutter/material.dart';
import 'package:fotmob_clone/features/news/presentation/view/widgets/news_webview_body.dart';
import 'package:gap/gap.dart';

class NewsWebView extends StatelessWidget {
  const NewsWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.ios_share_outlined),
          Gap(20),
        ],
      ),
      body: const NewsWebviewBody(),
    );
  }
}
