import '/components/messag_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'message_widget.dart' show MessageWidget;
import 'package:flutter/material.dart';

class MessageModel extends FlutterFlowModel<MessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for MessagBox component.
  late MessagBoxModel messagBoxModel;

  @override
  void initState(BuildContext context) {
    messagBoxModel = createModel(context, () => MessagBoxModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    messagBoxModel.dispose();
  }
}
