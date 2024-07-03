import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customnavbar/customnavbar_widget.dart';
import 'talent_mentor_view_widget.dart' show TalentMentorViewWidget;
import 'package:flutter/material.dart';

class TalentMentorViewModel extends FlutterFlowModel<TalentMentorViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

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
