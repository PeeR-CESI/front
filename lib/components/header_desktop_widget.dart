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

    _model.screachtextController ??= TextEditingController();
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
                width: MediaQuery.sizeOf(context).width * 0.095,
                height: MediaQuery.sizeOf(context).height * 0.057,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  child: TextFormField(
                    controller: _model.screachtextController,
                    focusNode: _model.screachtextFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Label here...',
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
                    minLines: null,
                    validator: _model.screachtextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 0.0,
              borderWidth: 1.0,
              buttonSize: MediaQuery.sizeOf(context).width * 0.025,
              fillColor: Colors.black,
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 40.0,
              ),
              onPressed: () {
                print('sreachButton pressed ...');
              },
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
                'Peerers',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: AutoSizeText(
                      'Digital',
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
