import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fiche_article_model.dart';
export 'fiche_article_model.dart';

class FicheArticleWidget extends StatefulWidget {
  const FicheArticleWidget({super.key});

  @override
  State<FicheArticleWidget> createState() => _FicheArticleWidgetState();
}

class _FicheArticleWidgetState extends State<FicheArticleWidget> {
  late FicheArticleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FicheArticleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269.0,
      height: 320.0,
      constraints: const BoxConstraints(
        minWidth: 200.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/P_20230612_091524.jpg',
              width: 269.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.016,
                    height: MediaQuery.sizeOf(context).width * 0.016,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/office-1730939.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'n9jsy7vu' /* M.lirs */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.029,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).customColor4,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '3p2plzny' /* Top P */,
                              ),
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: AutoSizeText(
              FFLocalizations.of(context).getText(
                'axlzxvw6' /* Je répare votre chaudière dans... */,
              ),
              maxLines: 2,
              style: GoogleFonts.getFont(
                'Inter',
                color: FlutterFlowTheme.of(context).greyC,
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FaIcon(
                FontAwesomeIcons.solidStar,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'u199q9u2' /* 5.0 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(2.0, 5.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '38zvx75z' /* (244) */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
