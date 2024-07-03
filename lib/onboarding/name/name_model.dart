import '/flutter_flow/flutter_flow_util.dart';
import 'name_widget.dart' show NameWidget;
import 'package:flutter/material.dart';

class NameModel extends FlutterFlowModel<NameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
