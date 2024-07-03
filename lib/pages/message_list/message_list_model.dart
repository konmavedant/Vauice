import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customnavbar/customnavbar_widget.dart';
import 'message_list_widget.dart' show MessageListWidget;
import 'package:flutter/material.dart';

class MessageListModel extends FlutterFlowModel<MessageListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for customnavbar component.
  late CustomnavbarModel customnavbarModel;

  @override
  void initState(BuildContext context) {
    customnavbarModel = createModel(context, () => CustomnavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customnavbarModel.dispose();
  }
}
