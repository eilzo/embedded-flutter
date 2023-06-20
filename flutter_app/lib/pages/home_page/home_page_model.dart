import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  dynamic chatHistory = functions.saveChatHistory(
    [],
    functions.convertToJSON('Welcome! How can I help you today?'),
  );

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;

  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in Icon widget.
  ApiCallResponse? chatGPTResponse;
  // Stores action output result for [Backend Call - API (Send Initial Prompt)] action in Icon widget.
  ApiCallResponse? chatGPTResponse2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
