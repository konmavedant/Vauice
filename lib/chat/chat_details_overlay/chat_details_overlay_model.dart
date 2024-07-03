import '/chat/delete_dialog/delete_dialog_widget.dart';
import '/chat/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_details_overlay_widget.dart' show ChatDetailsOverlayWidget;
import 'package:flutter/material.dart';

class ChatDetailsOverlayModel
    extends FlutterFlowModel<ChatDetailsOverlayWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for deleteDialog component.
  late DeleteDialogModel deleteDialogModel;
  // Models for user_ListSmall dynamic component.
  late FlutterFlowDynamicModels<UserListSmallModel> userListSmallModels;

  @override
  void initState(BuildContext context) {
    deleteDialogModel = createModel(context, () => DeleteDialogModel());
    userListSmallModels = FlutterFlowDynamicModels(() => UserListSmallModel());
  }

  @override
  void dispose() {
    deleteDialogModel.dispose();
    userListSmallModels.dispose();
  }
}
