import '/flutter_flow/flutter_flow_util.dart';
import 'lp2_widget.dart' show Lp2Widget;
import 'package:flutter/material.dart';

class Lp2Model extends FlutterFlowModel<Lp2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
