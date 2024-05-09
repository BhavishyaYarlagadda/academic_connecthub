import '/flutter_flow/flutter_flow_util.dart';
import 'student_loginpage_widget.dart' show StudentLoginpageWidget;
import 'package:flutter/material.dart';

class StudentLoginpageModel extends FlutterFlowModel<StudentLoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Studentemail-login widget.
  FocusNode? studentemailLoginFocusNode;
  TextEditingController? studentemailLoginTextController;
  String? Function(BuildContext, String?)?
      studentemailLoginTextControllerValidator;
  // State field(s) for studentpassword widget.
  FocusNode? studentpasswordFocusNode;
  TextEditingController? studentpasswordTextController;
  late bool studentpasswordVisibility;
  String? Function(BuildContext, String?)?
      studentpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    studentpasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentemailLoginFocusNode?.dispose();
    studentemailLoginTextController?.dispose();

    studentpasswordFocusNode?.dispose();
    studentpasswordTextController?.dispose();
  }
}
