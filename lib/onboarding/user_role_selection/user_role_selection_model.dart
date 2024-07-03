import '/flutter_flow/flutter_flow_util.dart';
import 'user_role_selection_widget.dart' show UserRoleSelectionWidget;
import 'package:flutter/material.dart';

class UserRoleSelectionModel extends FlutterFlowModel<UserRoleSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
