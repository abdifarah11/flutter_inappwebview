import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  late InAppWebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('facebook'), // Title for the AppBar
      ),
      body: InAppWebView(
        initialUrlRequest:  URLRequest(url:  WebUri.uri(Uri.parse("https://www.facebook.com/"))),
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true),
        ),
      ),
    );
  }
}
