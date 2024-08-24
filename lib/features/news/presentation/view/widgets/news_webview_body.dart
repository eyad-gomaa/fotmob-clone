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
    return InAppWebView(
      initialUrlRequest: URLRequest(
          url: WebUri.uri(Uri.parse("https://flutter.dev")),
        ),
      onWebViewCreated: (InAppWebViewController controller) {
        _webViewController = controller;
      },
    );
  }
}
