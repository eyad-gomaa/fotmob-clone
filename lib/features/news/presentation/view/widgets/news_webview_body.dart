import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NewsWebviewBody extends StatefulWidget {
  const NewsWebviewBody({super.key});

  @override
  State<NewsWebviewBody> createState() => _NewsWebviewBodyState();
}

class _NewsWebviewBodyState extends State<NewsWebviewBody> {
  late InAppWebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri.uri(Uri.parse("https://flutter.dev")),
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            _webViewController = controller;
          },
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 30,
                ),
                onPressed: () async {
                  if (await _webViewController.canGoBack()) {
                    _webViewController.goBack();
                  }
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                ),
                onPressed: () async {
                  if (await _webViewController.canGoForward()) {
                    _webViewController.goForward();
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
