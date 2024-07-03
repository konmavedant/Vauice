import '/flutter_flow/flutter_flow_util.dart';
import 'talent_selection_widget.dart' show TalentSelectionWidget;
import 'package:flutter/material.dart';

class TalentSelectionModel extends FlutterFlowModel<TalentSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
