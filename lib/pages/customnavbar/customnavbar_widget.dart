import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'customnavbar_model.dart';
export 'customnavbar_model.dart';

class CustomnavbarWidget extends StatefulWidget {
  const CustomnavbarWidget({
    super.key,
    int? selectedPageIndex,
    this.hidden,
  }) : selectedPageIndex = selectedPageIndex ?? 1;

  final int selectedPageIndex;
  final bool? hidden;

  @override
  State<CustomnavbarWidget> createState() => _CustomnavbarWidgetState();
}

class _CustomnavbarWidgetState extends State<CustomnavbarWidget> {
  late CustomnavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomnavbarModel());

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
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primaryText,
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 47.0,
                  fillColor: FlutterFlowTheme.of(context).primaryText,
                  icon: const Icon(
                    Icons.home_rounded,
                    color: Color(0xA8000000),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('TalentHomeCopy');
                  },
                ),
              ),
              Opacity(
                opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 46.0,
                    fillColor: FlutterFlowTheme.of(context).primaryText,
                    icon: const Icon(
                      Icons.chat_bubble_rounded,
                      color: Color(0xA8000000),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'chat_2_main',
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
                opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primaryText,
                    icon: const Icon(
                      Icons.add_circle_outline_outlined,
                      color: Color(0xA8000000),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'createpost',
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
                opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 49.0,
                    fillColor: FlutterFlowTheme.of(context).primaryText,
                    icon: const Icon(
                      Icons.star_sharp,
                      color: Color(0xA8000000),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'TalentFavourite',
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
                opacity: widget.selectedPageIndex == 5 ? 1.0 : 0.5,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 43.0,
                    fillColor: FlutterFlowTheme.of(context).primaryText,
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xA8000000),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'UserProfile',
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
    );
  }
}
