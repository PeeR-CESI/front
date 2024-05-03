import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (MediaQuery.sizeOf(context).width > 1000.0 ? true : false) &&
          responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Column(
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
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'u927yzv3' /* Label here... */,
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
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).customColor3,
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primaryText,
                  icon: Icon(
                    Icons.search_sharp,
                    color: FlutterFlowTheme.of(context).customColor3,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 100.0, 0.0),
                  child: Icon(
                    Icons.location_on,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 35.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                  child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'wp9yheji' /* Peerers */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Icon(
                  Icons.mark_chat_unread_outlined,
                  color: FlutterFlowTheme.of(context).customColor4,
                  size: 40.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 20.0, 0.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: FlutterFlowTheme.of(context).customColor4,
                    size: 40.0,
                  ),
                ),
                Container(
                  width: 71.0,
                  height: 71.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/office-1730939.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'jj9pgjly' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '6bz8bo1p' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'gfcy2sbb' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'hb8p8qg5' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '7ko29b30' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'z196l5w9' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '231ecpco' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'p5ghunlk' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                  AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'izih5au9' /* Administrative */,
                    ),
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).greyC,
                      fontWeight: FontWeight.w500,
                      fontSize: 26.0,
                    ),
                  ),
                ],
              ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).greyC,
            ),
          ],
        ),
      ),
    );
  }
}
