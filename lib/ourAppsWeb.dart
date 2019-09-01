import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OurAppsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WebViewController _controller;
    return WebView(
        initialUrl: 'https://www.google.com',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        });
  }
}
