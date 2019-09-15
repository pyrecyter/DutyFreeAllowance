import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OurAppsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WebViewController _controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Web'),
      ),
      body:WebView(
        initialUrl: 'https://www.visibletec.com',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        }));
  }
}
