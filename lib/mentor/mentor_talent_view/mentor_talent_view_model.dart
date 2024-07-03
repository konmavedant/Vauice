import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentornav/mentornav_widget.dart';
import 'mentor_talent_view_widget.dart' show MentorTalentViewWidget;
import 'package:flutter/material.dart';

class MentorTalentViewModel extends FlutterFlowModel<MentorTalentViewWidget> {
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
