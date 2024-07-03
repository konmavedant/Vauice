import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'validate_d_o_b_model.dart';
export 'validate_d_o_b_model.dart';

class ValidateDOBWidget extends StatefulWidget {
  const ValidateDOBWidget({super.key});

  @override
  State<ValidateDOBWidget> createState() => _ValidateDOBWidgetState();
}

class _ValidateDOBWidgetState extends State<ValidateDOBWidget> {
  late ValidateDOBModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidateDOBModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299.0,
      height: 299.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -0.3),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Your Age is ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).tertiary,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      valueOrDefault(currentUserDocument?.age, 0).toString(),
                      '20',
                    ),
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text: ' Years old!',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 0.0),
                child: Text(
                  'Click anywhere once \nyou select your DOB!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.04, 0.29),
            child: FFButtonWidget(
              onPressed: () async {
                await showModalBottomSheet<bool>(
                    context: context,
                    builder: (context) {
                      return ScrollConfiguration(
                        behavior: const MaterialScrollBehavior().copyWith(
                          dragDevices: {
                            PointerDeviceKind.mouse,
                            PointerDeviceKind.touch,
                            PointerDeviceKind.stylus,
                            PointerDeviceKind.unknown
                          },
                        ),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            minimumDate: DateTime(1900),
                            initialDateTime:
                                DateTime.fromMicrosecondsSinceEpoch(
                                    1340994600000000),
                            maximumDate: DateTime(2050),
                            use24hFormat: false,
                            onDateTimeChanged: (newDateTime) =>
                                safeSetState(() {
                              _model.datePicked = newDateTime;
                            }),
                          ),
                        ),
                      );
                    });

                await currentUserReference!.update(createUsersRecordData(
                  dateOfBirth: _model.datePicked,
                  age: functions.calculateAge(_model.datePicked!),
                ));
                Navigator.pop(context);
              },
              text: 'Select Date',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).success,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
