import '/flutter_flow/flutter_flow_util.dart';
import '/talent/navbar/navbar_widget.dart';
import 'talent_favourite_widget.dart' show TalentFavouriteWidget;
import 'package:flutter/material.dart';

class TalentFavouriteModel extends FlutterFlowModel<TalentFavouriteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarModel.dispose();
  }
}
