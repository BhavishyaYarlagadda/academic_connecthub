import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'student_main_settings_model.dart';
export 'student_main_settings_model.dart';

class StudentMainSettingsWidget extends StatefulWidget {
  const StudentMainSettingsWidget({super.key});

  @override
  State<StudentMainSettingsWidget> createState() =>
      _StudentMainSettingsWidgetState();
}

class _StudentMainSettingsWidgetState extends State<StudentMainSettingsWidget> {
  late StudentMainSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentMainSettingsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
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
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Text(
              'Settings ',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: const Color(0xFF15161E),
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('Splashpage', context.mounted);
              },
              text: 'Log Out',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: const Color(0xFF606A85),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Color(0xFFE5E7EB),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ].addToEnd(const SizedBox(height: 64.0)),
      ),
    );
  }
}
