import '/flutter_flow/flutter_flow_util.dart';
import 'profilepicture_widget.dart' show ProfilepictureWidget;
import 'package:flutter/material.dart';

class ProfilepictureModel extends FlutterFlowModel<ProfilepictureWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
