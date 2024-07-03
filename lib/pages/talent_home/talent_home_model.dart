import '/flutter_flow/flutter_flow_util.dart';
import '/talent/navbar/navbar_widget.dart';
import 'talent_home_widget.dart' show TalentHomeWidget;
import 'package:flutter/material.dart';

class TalentHomeModel extends FlutterFlowModel<TalentHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
