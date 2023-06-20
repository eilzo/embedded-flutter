import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'dart:html' as html;

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // if chatHistory isn't a list, make it a list and then append newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
  } else {
    chatHistory = [chatHistory];
    chatHistory.add(newChat);
  }
  return chatHistory;
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}
