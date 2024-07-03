import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentornav/mentornav_widget.dart';
import 'chat2_mentor_widget.dart' show Chat2MentorWidget;
import 'package:flutter/material.dart';

class Chat2MentorModel extends FlutterFlowModel<Chat2MentorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mentornav component.
  late MentornavModel mentornavModel;

  @override
  void initState(BuildContext context) {
    mentornavModel = createModel(context, () => MentornavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentornavModel.dispose();
  }
}
