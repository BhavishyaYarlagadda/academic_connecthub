import '/flutter_flow/flutter_flow_util.dart';
import 'student_homepage_widget.dart' show StudentHomepageWidget;
import 'package:flutter/material.dart';

class StudentHomepageModel extends FlutterFlowModel<StudentHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
