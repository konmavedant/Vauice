import '/flutter_flow/flutter_flow_util.dart';
import '/talent/navbar/navbar_widget.dart';
import 'postviewtalent_widget.dart' show PostviewtalentWidget;
import 'package:flutter/material.dart';

class PostviewtalentModel extends FlutterFlowModel<PostviewtalentWidget> {
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
