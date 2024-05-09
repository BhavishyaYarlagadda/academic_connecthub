import '/flutter_flow/flutter_flow_util.dart';
import 'teacherdashboard_widget.dart' show TeacherdashboardWidget;
import 'package:flutter/material.dart';

class TeacherdashboardModel extends FlutterFlowModel<TeacherdashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
