import '/flutter_flow/flutter_flow_util.dart';
import 'editinfo_talent_widget.dart' show EditinfoTalentWidget;
import 'package:flutter/material.dart';

class EditinfoTalentModel extends FlutterFlowModel<EditinfoTalentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for usrname widget.
  FocusNode? usrnameFocusNode;
  TextEditingController? usrnameTextController;
  String? Function(BuildContext, String?)? usrnameTextControllerValidator;
  // State field(s) for usrbio widget.
  FocusNode? usrbioFocusNode;
  TextEditingController? usrbioTextController;
  String? Function(BuildContext, String?)? usrbioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    usrnameFocusNode?.dispose();
    usrnameTextController?.dispose();

    usrbioFocusNode?.dispose();
    usrbioTextController?.dispose();
  }
}