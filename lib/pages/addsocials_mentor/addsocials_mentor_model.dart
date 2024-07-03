import '/flutter_flow/flutter_flow_util.dart';
import 'addsocials_mentor_widget.dart' show AddsocialsMentorWidget;
import 'package:flutter/material.dart';

class AddsocialsMentorModel extends FlutterFlowModel<AddsocialsMentorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for linkbtn widget.
  FocusNode? linkbtnFocusNode;
  TextEditingController? linkbtnTextController;
  String? Function(BuildContext, String?)? linkbtnTextControllerValidator;
  // State field(s) for Instabtn widget.
  FocusNode? instabtnFocusNode;
  TextEditingController? instabtnTextController;
  String? Function(BuildContext, String?)? instabtnTextControllerValidator;
  // State field(s) for Fbbtn widget.
  FocusNode? fbbtnFocusNode;
  TextEditingController? fbbtnTextController;
  String? Function(BuildContext, String?)? fbbtnTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    linkbtnFocusNode?.dispose();
    linkbtnTextController?.dispose();

    instabtnFocusNode?.dispose();
    instabtnTextController?.dispose();

    fbbtnFocusNode?.dispose();
    fbbtnTextController?.dispose();
  }
}
