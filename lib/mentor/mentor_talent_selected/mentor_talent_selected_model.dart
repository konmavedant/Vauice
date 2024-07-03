import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentornav/mentornav_widget.dart';
import 'mentor_talent_selected_widget.dart' show MentorTalentSelectedWidget;
import 'package:flutter/material.dart';

class MentorTalentSelectedModel
    extends FlutterFlowModel<MentorTalentSelectedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for mentornav component.
  late MentornavModel mentornavModel;

  @override
  void initState(BuildContext context) {
    mentornavModel = createModel(context, () => MentornavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    mentornavModel.dispose();
  }
}
