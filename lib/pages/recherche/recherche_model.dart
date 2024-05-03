import '/components/fiche_article_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recherche_widget.dart' show RechercheWidget;
import 'package:flutter/material.dart';

class RechercheModel extends FlutterFlowModel<RechercheWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for fiche_article component.
  late FicheArticleModel ficheArticleModel;

  @override
  void initState(BuildContext context) {
    ficheArticleModel = createModel(context, () => FicheArticleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ficheArticleModel.dispose();
  }
}
