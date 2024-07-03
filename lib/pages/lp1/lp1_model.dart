import '/flutter_flow/flutter_flow_util.dart';
import 'lp1_widget.dart' show Lp1Widget;
import 'package:flutter/material.dart';

class Lp1Model extends FlutterFlowModel<Lp1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
