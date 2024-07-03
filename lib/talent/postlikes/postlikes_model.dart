import '/flutter_flow/flutter_flow_util.dart';
import 'postlikes_widget.dart' show PostlikesWidget;
import 'package:flutter/material.dart';

class PostlikesModel extends FlutterFlowModel<PostlikesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
