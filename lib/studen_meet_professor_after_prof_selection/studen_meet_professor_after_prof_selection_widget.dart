import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bookingsent_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'studen_meet_professor_after_prof_selection_model.dart';
export 'studen_meet_professor_after_prof_selection_model.dart';

class StudenMeetProfessorAfterProfSelectionWidget extends StatefulWidget {
  const StudenMeetProfessorAfterProfSelectionWidget({
    super.key,
    this.professorref,
  });

  final DocumentReference? professorref;

  @override
  State<StudenMeetProfessorAfterProfSelectionWidget> createState() =>
      _StudenMeetProfessorAfterProfSelectionWidgetState();
}

class _StudenMeetProfessorAfterProfSelectionWidgetState
    extends State<StudenMeetProfessorAfterProfSelectionWidget> {
  late StudenMeetProfessorAfterProfSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StudenMeetProfessorAfterProfSelectionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ProfessorsRecord>(
      stream: ProfessorsRecord.getDocument(widget.professorref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final studenMeetProfessorAfterProfSelectionProfessorsRecord =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 46.0,
                              icon: const Icon(
                                Icons.arrow_back_rounded,
                                color: Color(0xFF15161E),
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            studenMeetProfessorAfterProfSelectionProfessorsRecord
                                .image,
                            width: 393.0,
                            height: 372.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.12),
                    child: Container(
                      width: double.infinity,
                      height: 470.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                      .name,
                                  'Name',
                                ),
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                studenMeetProfessorAfterProfSelectionProfessorsRecord
                                    .location,
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                      .researchInterest,
                                  'Research Interest',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              Text(
                                'Description',
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                      .bio,
                                  'Bio',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              Text(
                                'Select dates',
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: FlutterFlowCalendar(
                                  color: FlutterFlowTheme.of(context).primary,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  weekFormat: true,
                                  weekStartsMonday: true,
                                  rowHeight: 56.0,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() => _model.calendarSelectedDay =
                                        newSelectedDate);
                                  },
                                  titleStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                  dayOfWeekStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                  dateStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  selectedDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                  inactiveDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                ),
                              ),
                              Text(
                                'Select time',
                                style: GoogleFonts.getFont(
                                  'Outfit',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().bookingtime =
                                                      '8:00AM';
                                                });
                                              },
                                              child: Container(
                                                width: 75.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                                  .bookingtime !=
                                                              ''
                                                      ? const Color(0xFF5146D9)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .time1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FFAppState()
                                                                        .bookingtime !=
                                                                    ''
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate
                                                            : const Color(0xFF2B2B2B),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().bookingtime =
                                                      '8:30AM';
                                                });
                                              },
                                              child: Container(
                                                width: 75.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                                  .bookingtime !=
                                                              ''
                                                      ? const Color(0xFF5146D9)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .time2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().bookingtime =
                                                      '9:00AM';
                                                });
                                              },
                                              child: Container(
                                                width: 75.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                                  .bookingtime !=
                                                              ''
                                                      ? const Color(0xFF5146D9)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .time3,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().bookingtime =
                                                      '9:30AM';
                                                });
                                              },
                                              child: Container(
                                                width: 75.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                                  .bookingtime !=
                                                              ''
                                                      ? const Color(0xFF5146D9)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .time4,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 30.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('Student_Message');
                                      },
                                      text: 'Send Message',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await BookingsRecord.collection
                                            .doc()
                                            .set(createBookingsRecordData(
                                              professorname:
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .name,
                                              studentname:
                                                  currentUserDisplayName,
                                              professorimage:
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .image,
                                              researchinterest:
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .researchInterest,
                                              orderdate: getCurrentTimestamp,
                                              orderID: random_data
                                                  .randomInteger(5, 10)
                                                  .toString(),
                                              meetinglink:
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .meetinglink,
                                              professoremail:
                                                  studenMeetProfessorAfterProfSelectionProfessorsRecord
                                                      .email,
                                              bookingdate: _model
                                                  .calendarSelectedDay?.start,
                                              bookingtime:
                                                  FFAppState().bookingtime,
                                              studentimage: currentUserPhoto,
                                            ));
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const SizedBox(
                                                  height: 500.0,
                                                  child: BookingsentWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      text: 'Book Appointment',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
