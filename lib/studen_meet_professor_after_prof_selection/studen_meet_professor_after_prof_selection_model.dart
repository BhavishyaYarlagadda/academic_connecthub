import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'studen_meet_professor_after_prof_selection_widget.dart'
    show StudenMeetProfessorAfterProfSelectionWidget;
import 'package:flutter/material.dart';

class StudenMeetProfessorAfterProfSelectionModel
    extends FlutterFlowModel<StudenMeetProfessorAfterProfSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
