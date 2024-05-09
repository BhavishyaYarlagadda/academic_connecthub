import '/flutter_flow/flutter_flow_util.dart';
import 'student_signup_widget.dart' show StudentSignupWidget;
import 'package:flutter/material.dart';

class StudentSignupModel extends FlutterFlowModel<StudentSignupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for studentfullName widget.
  FocusNode? studentfullNameFocusNode;
  TextEditingController? studentfullNameTextController;
  String? Function(BuildContext, String?)?
      studentfullNameTextControllerValidator;
  String? _studentfullNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for studentregistrationnumber widget.
  FocusNode? studentregistrationnumberFocusNode;
  TextEditingController? studentregistrationnumberTextController;
  String? Function(BuildContext, String?)?
      studentregistrationnumberTextControllerValidator;
  String? _studentregistrationnumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for studentphoneNumber widget.
  FocusNode? studentphoneNumberFocusNode;
  TextEditingController? studentphoneNumberTextController;
  String? Function(BuildContext, String?)?
      studentphoneNumberTextControllerValidator;
  // State field(s) for studentEmail widget.
  FocusNode? studentEmailFocusNode;
  TextEditingController? studentEmailTextController;
  String? Function(BuildContext, String?)? studentEmailTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for Repass widget.
  FocusNode? repassFocusNode;
  TextEditingController? repassTextController;
  late bool repassVisibility;
  String? Function(BuildContext, String?)? repassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    studentfullNameTextControllerValidator =
        _studentfullNameTextControllerValidator;
    studentregistrationnumberTextControllerValidator =
        _studentregistrationnumberTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    repassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    studentfullNameFocusNode?.dispose();
    studentfullNameTextController?.dispose();

    studentregistrationnumberFocusNode?.dispose();
    studentregistrationnumberTextController?.dispose();

    studentphoneNumberFocusNode?.dispose();
    studentphoneNumberTextController?.dispose();

    studentEmailFocusNode?.dispose();
    studentEmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    repassFocusNode?.dispose();
    repassTextController?.dispose();
  }
}
