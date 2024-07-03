import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mentornav_model.dart';
export 'mentornav_model.dart';

class MentornavWidget extends StatefulWidget {
  const MentornavWidget({
    super.key,
    int? mselectedPageIndex,
    this.mhidden,
  }) : mselectedPageIndex = mselectedPageIndex ?? 1;

  final int mselectedPageIndex;
  final bool? mhidden;

  @override
  State<MentornavWidget> createState() => _MentornavWidgetState();
}

class _MentornavWidgetState extends State<MentornavWidget> {
  late MentornavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentornavModel());

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
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.mselectedPageIndex == 1 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 42.0,
                    icon: const Icon(
                      Icons.home_rounded,
                      color: Color(0xA8000000),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'MentorHomeCopy',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                Opacity(
                  opacity: widget.mselectedPageIndex == 2 ? 1.0 : 0.5,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 0.0,
                      buttonSize: 43.0,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                      icon: const Icon(
                        Icons.chat_bubble_outlined,
                        color: Color(0xA8000000),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'chat_2_mentor',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                Opacity(
                  opacity: widget.mselectedPageIndex == 3 ? 1.0 : 0.5,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 0.0,
                      buttonSize: 47.0,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                      icon: const Icon(
                        Icons.star_outlined,
                        color: Color(0xA8000000),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'MentorTalentSelected',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                Opacity(
                  opacity: widget.mselectedPageIndex == 4 ? 1.0 : 0.5,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 0.0,
                      buttonSize: 46.0,
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                      icon: const Icon(
                        Icons.person,
                        color: Color(0xA8000000),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'MentorProfile',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
