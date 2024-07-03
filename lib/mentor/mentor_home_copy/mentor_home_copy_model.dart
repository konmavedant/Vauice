import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentornav/mentornav_widget.dart';
import 'mentor_home_copy_widget.dart' show MentorHomeCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class MentorHomeCopyModel extends FlutterFlowModel<MentorHomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for mentornav component.
  late MentornavModel mentornavModel;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    mentornavModel = createModel(context, () => MentornavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentornavModel.dispose();
  }
}
