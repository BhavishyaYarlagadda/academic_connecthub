import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'studen_meet_professor_copy_widget.dart'
    show StudenMeetProfessorCopyWidget;
import 'package:flutter/material.dart';

class StudenMeetProfessorCopyModel
    extends FlutterFlowModel<StudenMeetProfessorCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProfessorsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
