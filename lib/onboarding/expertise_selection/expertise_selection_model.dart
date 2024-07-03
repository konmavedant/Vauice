import '/flutter_flow/flutter_flow_util.dart';
import 'expertise_selection_widget.dart' show ExpertiseSelectionWidget;
import 'package:flutter/material.dart';

class ExpertiseSelectionModel
    extends FlutterFlowModel<ExpertiseSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
