import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Zee5 extends StatefulWidget {
  const Zee5({Key? key}) : super(key: key);

  @override
  State<Zee5> createState() => _Zee5State();
}

class _Zee5State extends State<Zee5> {
  final GlobalKey inappwebview = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  final GlobalKey inAppkEY = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: AppBar(
        title: const Text("zee5"),
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
      body:  InAppWebView(
        key: inAppkEY,
        initialUrlRequest: URLRequest(url: Uri.parse("https://www.zee5.com"),),
      ),
    );
  }
}
