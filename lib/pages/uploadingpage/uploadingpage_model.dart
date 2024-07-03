import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customnavbar/customnavbar_widget.dart';
import 'uploadingpage_widget.dart' show UploadingpageWidget;
import 'package:flutter/material.dart';

class UploadingpageModel extends FlutterFlowModel<UploadingpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customnavbar component.
  late CustomnavbarModel customnavbarModel;

  @override
  void initState(BuildContext context) {
    customnavbarModel = createModel(context, () => CustomnavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customnavbarModel.dispose();
  }
}
