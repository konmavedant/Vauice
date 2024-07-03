import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentornav/mentornav_widget.dart';
import 'mentor_home_widget.dart' show MentorHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class MentorHomeModel extends FlutterFlowModel<MentorHomeWidget> {
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
