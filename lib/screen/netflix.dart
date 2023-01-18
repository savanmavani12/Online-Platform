import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Netflix extends StatefulWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  final GlobalKey inappwebview = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  final GlobalKey inAppwebkEY = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: AppBar(
        title: const Text("Netflix"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                inAppWebViewController!.goBack();
              }
            },
          ),
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushNamed('OttPlatform');
              }),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                inAppWebViewController!.goForward();
              }
            },
          ),
        ],
      ),
      body: InAppWebView(
        key: inAppwebkEY,
        initialUrlRequest: URLRequest(url: Uri.parse("https://netflix.com"),),
      ),
    );
  }
}
