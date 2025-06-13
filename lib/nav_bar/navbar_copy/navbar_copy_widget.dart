import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_view_widget/home_view_widget_widget.dart';
import '/profile/profile_wid/profile_wid_widget.dart';
import '/statistics/stastic_widget/stastic_widget_widget.dart';
import 'package:flutter/material.dart';
import 'navbar_copy_model.dart';
export 'navbar_copy_model.dart';

class NavbarCopyWidget extends StatefulWidget {
  const NavbarCopyWidget({super.key});

  static String routeName = 'NavbarCopy';
  static String routePath = '/navbarCopy';

  @override
  State<NavbarCopyWidget> createState() => _NavbarCopyWidgetState();
}

class _NavbarCopyWidgetState extends State<NavbarCopyWidget> {
  late NavbarCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      FFAppState().bottomindex = valueOrDefault<int>(
                        _model.pageViewCurrentIndex,
                        2,
                      );
                      safeSetState(() {});
                      _model.bottomAdd = valueOrDefault<int>(
                        _model.pageViewCurrentIndex,
                        1,
                      );
                      safeSetState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      wrapWithModel(
                        model: _model.homeViewWidgetModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeViewWidgetWidget(),
                      ),
                      wrapWithModel(
                        model: _model.stasticWidgetModel,
                        updateCallback: () => safeSetState(() {}),
                        child: StasticWidgetWidget(),
                      ),
                      wrapWithModel(
                        model: _model.profileWidModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ProfileWidWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16.0,
                      color: Color(0x23160000),
                      offset: Offset(
                        0.0,
                        4.0,
                      ),
                      spreadRadius: 0.1,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn,
                    width: double.infinity,
                    height: 74.0,
                    constraints: BoxConstraints(
                      minHeight: 76.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF0B0A0A),
                      borderRadius: BorderRadius.circular(75.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: valueOrDefault<int>(
                              _model.bottomAdd == 0 ? 2 : 1,
                              1,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomAdd = valueOrDefault<int>(
                                  _model.bottomAdd,
                                  0,
                                );
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Builder(
                                builder: (context) {
                                  if (_model.bottomAdd == 0) {
                                    return Container(
                                      width: 105.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(44.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.wallet_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 35.0,
                                          ),
                                          Text(
                                            'Wallet',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 5.0)),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.wallet,
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                          size: 40.0,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: valueOrDefault<int>(
                              _model.bottomAdd == 1 ? 2 : 1,
                              1,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomAdd = 1;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Builder(
                                builder: (context) {
                                  if (_model.bottomAdd == 1) {
                                    return Container(
                                      width: 105.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(44.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.bar_chart,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 35.0,
                                          ),
                                          Text(
                                            'Stats',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 5.0)),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.bar_chart,
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                          size: 40.0,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: valueOrDefault<int>(
                              _model.bottomAdd == 2 ? 2 : 1,
                              1,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomAdd = 2;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Builder(
                                builder: (context) {
                                  if (_model.bottomAdd == 2) {
                                    return Container(
                                      width: 105.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(44.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.person_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 35.0,
                                          ),
                                          Text(
                                            'Profile',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 5.0)),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.person_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .navBarInactive,
                                          size: 40.0,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 22.0))
                            .addToStart(SizedBox(width: 14.0))
                            .addToEnd(SizedBox(width: 14.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
