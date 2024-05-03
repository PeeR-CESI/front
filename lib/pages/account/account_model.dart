import '/flutter_flow/flutter_flow_util.dart';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/material.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressTextController3;
  String? Function(BuildContext, String?)? emailAddressTextController3Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode4;
  TextEditingController? emailAddressTextController4;
  String? Function(BuildContext, String?)? emailAddressTextController4Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode5;
  TextEditingController? emailAddressTextController5;
  String? Function(BuildContext, String?)? emailAddressTextController5Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode6;
  TextEditingController? emailAddressTextController6;
  String? Function(BuildContext, String?)? emailAddressTextController6Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode7;
  TextEditingController? emailAddressTextController7;
  String? Function(BuildContext, String?)? emailAddressTextController7Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressTextController3?.dispose();

    emailAddressFocusNode4?.dispose();
    emailAddressTextController4?.dispose();

    emailAddressFocusNode5?.dispose();
    emailAddressTextController5?.dispose();

    emailAddressFocusNode6?.dispose();
    emailAddressTextController6?.dispose();

    emailAddressFocusNode7?.dispose();
    emailAddressTextController7?.dispose();
  }
}
