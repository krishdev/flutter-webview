import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';

class MyaccountHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyaccountHomeState();
  }
}

class _MyaccountHomeState extends State<MyaccountHome> {
  //
  late WebViewController _webViewController;
  double webProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Insubuy')),
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            _webViewController.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: Column(
          children: [
            webProgress < 1
                ? SizedBox(
                    height: 5,
                    child: LinearProgressIndicator(
                      value: webProgress,
                      color: '#406a95',
                      backgroundColor: '#fafafa',
                    ),
                  )
                : SizedBox(),
            Expanded(
              child: WebView(
                initialUrl: 'https://www.zeroperks.com',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
