// ignore: avoid_web_libraries_in_flutter
import 'dart:async';
import 'dart:html' as html;

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String? messageValue;

  @override
  void initState() {
    html.window.addEventListener('message', listen, true);
    super.initState();
  }

  @override
  void dispose() {
    html.window.removeEventListener('message', listen, true);
    super.dispose();
  }

  void listen(html.Event event) {
    var data = (event as html.MessageEvent).data;
    final received = data['message'];

    // This works successfully.
    print(received);

    // This does not.
    setState(() {
      messageValue = received;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(messageValue ?? 'no message');
  }
}
