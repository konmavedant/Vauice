import '/flutter_flow/flutter_flow_util.dart';
import 'lp3_widget.dart' show Lp3Widget;
import 'package:flutter/material.dart';

class Lp3Model extends FlutterFlowModel<Lp3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
