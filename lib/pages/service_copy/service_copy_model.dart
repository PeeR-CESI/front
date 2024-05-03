import '/components/dropdown03_account_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'service_copy_widget.dart' show ServiceCopyWidget;
import 'package:flutter/material.dart';

class ServiceCopyModel extends FlutterFlowModel<ServiceCopyWidget> {
  ///  Local state fields for this page.

  bool visi = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Dropdown03Account component.
  late Dropdown03AccountModel dropdown03AccountModel;

  @override
  void initState(BuildContext context) {
    dropdown03AccountModel =
        createModel(context, () => Dropdown03AccountModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dropdown03AccountModel.dispose();
  }
}
