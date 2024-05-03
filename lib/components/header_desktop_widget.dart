import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_desktop_model.dart';
export 'header_desktop_model.dart';

class HeaderDesktopWidget extends StatefulWidget {
  const HeaderDesktopWidget({super.key});

  @override
  State<HeaderDesktopWidget> createState() => _HeaderDesktopWidgetState();
}

class _HeaderDesktopWidgetState extends State<HeaderDesktopWidget> {
  late HeaderDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderDesktopModel());

    _model.screachtextTextController ??= TextEditingController();
    _model.screachtextFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/image-removebg-preview.png',
                width: 150.0,
                height: 50.0,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  child: TextFormField(
                    controller: _model.screachtextTextController,
                    focusNode: _model.screachtextFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'e0woq6dp' /* Label here... */,
                      ),
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    validator: _model.screachtextTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: Colors.black,
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  onPressed: () {
                    print('sreachButton pressed ...');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 200.0, 0.0),
              child: Icon(
                Icons.location_on,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
              child: AutoSizeText(
                FFLocalizations.of(context).getText(
                  '8svxub2v' /* Peerers */,
                ),
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 28.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: Icon(
                Icons.mark_chat_unread_outlined,
                color: Color(0xFF3D00F4),
                size: 40.0,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: Icon(
                Icons.favorite_border,
                color: Color(0xFF3D00F4),
                size: 40.0,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.03,
              height: MediaQuery.sizeOf(context).width * 0.03,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/822/600',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        '3hdpim59' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        '8vuoyo7z' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        'xgkdtqg4' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        'tq83t55d' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        '05cm8whq' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        'tv6kd5gz' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.11,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        '08qyauxl' /* Digital */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF717170),
                        fontWeight: FontWeight.w500,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Color(0xFF717170),
            ),
          ],
        ),
      ],
    );
  }
}
