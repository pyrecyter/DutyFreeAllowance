import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SlCustomsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WebViewController _controller;
    return WebView(
        initialUrl: 'http://www.customs.gov.lk/traveller/home',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        });
  }
}
