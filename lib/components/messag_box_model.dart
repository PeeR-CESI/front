import '/flutter_flow/flutter_flow_util.dart';
import 'messag_box_widget.dart' show MessagBoxWidget;
import 'package:flutter/material.dart';

class MessagBoxModel extends FlutterFlowModel<MessagBoxWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
  }
}
