import '/flutter_flow/flutter_flow_util.dart';
import 'home_unconnect_desktop_widget.dart' show HomeUnconnectDesktopWidget;
import 'package:flutter/material.dart';

class HomeUnconnectDesktopModel
    extends FlutterFlowModel<HomeUnconnectDesktopWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
