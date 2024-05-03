import '/components/dropdown03_account_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'service_copy_model.dart';
export 'service_copy_model.dart';

class ServiceCopyWidget extends StatefulWidget {
  const ServiceCopyWidget({
    super.key,
    this.test,
  });

  final bool? test;

  @override
  State<ServiceCopyWidget> createState() => _ServiceCopyWidgetState();
}

class _ServiceCopyWidgetState extends State<ServiceCopyWidget> {
  late ServiceCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceCopyModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < 1000.0 ? 0.0 : 113.0,
                      0.0,
                    ),
                    0.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < 1000.0 ? 0.0 : 113.0,
                      0.0,
                    ),
                    0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      _model.visi = false;
                    });
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (MediaQuery.sizeOf(context).width > 1059.0
                            ? false
                            : true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: const Color(0x004B39EF),
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x004B39EF),
                                  icon: Icon(
                                    Icons.menu,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/image-removebg-preview.png',
                                    width: 150.0,
                                    height: 50.0,
                                    fit: BoxFit.fitWidth,
                                    cacheWidth: 150,
                                    cacheHeight: 50,
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.visi = !_model.visi;
                                    });
                                  },
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/617/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (MediaQuery.sizeOf(context).width < 1100.0
                                    ? false
                                    : true)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/image-removebg-preview.png',
                                          width: 150.0,
                                          height: 50.0,
                                          fit: BoxFit.fitWidth,
                                          cacheWidth: 150,
                                          cacheHeight: 50,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ohal6rrp' /* Label here... */,
                                              ),
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .customColor3,
                                        borderRadius: 0.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        icon: Icon(
                                          Icons.search_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor3,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 100.0, 0.0),
                                        child: Icon(
                                          Icons.location_on,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 35.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 50.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            'k8toxjlv' /* Peerers */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 28.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.mark_chat_unread_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor4,
                                        size: 40.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 20.0, 0.0),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor4,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'quuuuo95' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'ejdj8kp9' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          '7bbjg6rs' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          '10uqharo' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'k7n9fp8z' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          't1jhvwwk' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          '1uxmles1' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          's5juab9m' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26.0,
                                        ),
                                      ),
                                      AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'w9exo7q8' /* Administrative */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .greyC,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 26.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'acaned3k' /* JE REPARE VOTRE PLOMBERIE */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: Image.asset(
                                                'assets/images/P_20230612_091524.jpg',
                                                fit: BoxFit.contain,
                                                cacheWidth: 1920,
                                                cacheHeight: 1080,
                                              ),
                                              allowRotation: false,
                                              tag: 'imageTag3',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'imageTag3',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.asset(
                                            'assets/images/P_20230612_091524.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            fit: BoxFit.cover,
                                            cacheWidth: 1920,
                                            cacheHeight: 1080,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 38.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'dt173xko' /* #Order complete  */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontSize: 32.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (_model.visi)
                Align(
                  alignment: const AlignmentDirectional(1.04, -0.84),
                  child: wrapWithModel(
                    model: _model.dropdown03AccountModel,
                    updateCallback: () => setState(() {}),
                    child: const Dropdown03AccountWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
