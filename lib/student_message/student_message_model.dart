import '/flutter_flow/flutter_flow_util.dart';
import 'student_message_widget.dart' show StudentMessageWidget;
import 'package:flutter/material.dart';

class StudentMessageModel extends FlutterFlowModel<StudentMessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
