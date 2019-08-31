import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoreApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Apps'),
      ),
      body: const WebView(
        initialUrl: 'https://play.google.com/store/apps/dev?id=8319831009170079553&hl=en_GB',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

}

