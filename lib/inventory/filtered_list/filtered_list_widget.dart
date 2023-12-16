import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'filtered_list_model.dart';
export 'filtered_list_model.dart';

class FilteredListWidget extends StatefulWidget {
  const FilteredListWidget({
    Key? key,
    required this.blendType,
    required this.source,
    required this.grade,
    required this.initialcost,
    required this.finalcost,
  }) : super(key: key);

  final List<String>? blendType;
  final List<String>? source;
  final List<String>? grade;
  final double? initialcost;
  final double? finalcost;

  @override
  _FilteredListWidgetState createState() => _FilteredListWidgetState();
}

class _FilteredListWidgetState extends State<FilteredListWidget> {
  late FilteredListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilteredListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.slidenavbarModel,
              updateCallback: () => setState(() {}),
              child: SlidenavbarWidget(
                navselected: 1,
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 1370,
                  ),
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.safePop();
                                            },
                                            child: Icon(
                                              Icons.chevron_left,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              size: 35,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 12, 16, 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                              borderRadius:
                                              BorderRadius.circular(12),
                                              border: Border.all(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/Screenshot_2023-12-10_163813.png',
                                                  width: 44,
                                                  height: 44,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Manager',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge,
                                                ),
                                                Text(
                                                  currentUserEmail,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Inventory Information',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 4),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 12),
                                                child: StreamBuilder<List<TeabagRecord>>(
                                                  stream: queryTeabagRecord(
                                                      queryBuilder: (teabagRecord) =>
                                                          teabagRecord.where(Filter.and(
                                                            Filter('source',
                                                                whereIn: widget.source),
                                                            Filter('Blend',
                                                                arrayContainsAny: widget.blendType),
                                                            Filter('grade',
                                                                whereIn: widget.grade),
                                                          ))),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                          CircularProgressIndicator(
                                                            valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TeabagRecord>
                                                    dashboardCard3TeabagRecordList =
                                                    snapshot.data!;
                                                    return Container(
                                                      height: 120,
                                                      constraints:
                                                      BoxConstraints(
                                                        maxWidth: 300,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16, 0,
                                                            16, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                    'Average Cost in Inventory',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .labelMedium,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              4,
                                                                              4,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            formatNumber(
                                                                              functions.averagecost(dashboardCard3TeabagRecordList.map((e) => e.cost).toList(), dashboardCard3TeabagRecordList.map((e) => e.kgsBag).toList(), dashboardCard3TeabagRecordList.map((e) => e.count).toList()),
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.automatic,
                                                                              currency: 'Rs.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 30,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 12),
                                                child: StreamBuilder<List<TeabagRecord>>(
                                                  stream: queryTeabagRecord(
                                                      queryBuilder: (teabagRecord) =>
                                                          teabagRecord.where(Filter.and(
                                                            Filter('source',
                                                                whereIn: widget.source),
                                                            Filter('Blend',
                                                                arrayContainsAny: widget.blendType),
                                                            Filter('grade',
                                                                whereIn: widget.grade),
                                                          ))),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                          CircularProgressIndicator(
                                                            valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TeabagRecord>
                                                    dashboardCard3TeabagRecordList =
                                                    snapshot.data!;
                                                    return Container(
                                                      height: 120,
                                                      constraints:
                                                      BoxConstraints(
                                                        maxWidth: 300,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16, 0,
                                                            16, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                    'Total KG in inventory',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .labelMedium,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            4,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          formatNumber(
                                                                            functions.totakgs(dashboardCard3TeabagRecordList.map((e) => e.count).toList(),
                                                                                dashboardCard3TeabagRecordList.map((e) => e.kgsBag).toList()),
                                                                            formatType:
                                                                            FormatType.decimal,
                                                                            decimalType:
                                                                            DecimalType.automatic,
                                                                            currency:
                                                                            'Rs.',
                                                                          ),
                                                                          style:
                                                                          FlutterFlowTheme.of(context).displaySmall,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 12),
                                                child: StreamBuilder<List<TeabagRecord>>(
                                                  stream: queryTeabagRecord(
                                                      queryBuilder: (teabagRecord) =>
                                                          teabagRecord.where(Filter.and(
                                                            Filter('source',
                                                                whereIn: widget.source),
                                                            Filter('Blend',
                                                                arrayContainsAny: widget.blendType),
                                                            Filter('grade',
                                                                whereIn: widget.grade),
                                                          ))),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                          CircularProgressIndicator(
                                                            valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TeabagRecord>
                                                    dashboardCard3TeabagRecordList =
                                                    snapshot.data!;
                                                    return Container(
                                                      height: 120,
                                                      constraints:
                                                      BoxConstraints(
                                                        maxWidth: 300,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16, 0,
                                                            16, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                    'Total Invested in inventory',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .labelMedium,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            4,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          formatNumber(
                                                                            functions.totalInvestment(
                                                                                dashboardCard3TeabagRecordList.map((e) => e.cost).toList(),
                                                                                dashboardCard3TeabagRecordList.map((e) => e.count).toList(),
                                                                                dashboardCard3TeabagRecordList.map((e) => e.kgsBag).toList()),
                                                                            formatType:
                                                                            FormatType.decimal,
                                                                            decimalType:
                                                                            DecimalType.automatic,
                                                                            currency:
                                                                            'Rs.',
                                                                          ),
                                                                          style:
                                                                          FlutterFlowTheme.of(context).displaySmall,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ]
                                                .divide(SizedBox(width: 16))
                                                .addToStart(SizedBox(width: 16))
                                                .addToEnd(SizedBox(width: 16)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 16, 0, 0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      'R/s',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Invoice\nNumber',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 3,
                                                    child: Text(
                                                      'Garden',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Grade',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Kgs/Bag',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      'Cost',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Count',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Source',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Leaf Score',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      'Liquor Score',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Expanded(
                                                    flex: 3,
                                                    child: Text(
                                                      'Blend',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelSmall,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                child: StreamBuilder<List<TeabagRecord>>(
                                  stream: queryTeabagRecord(
                                      queryBuilder: (teabagRecord) =>
                                          teabagRecord.where(Filter.and(
                                            Filter('source',
                                                whereIn: widget.source),
                                            Filter('Blend',
                                                arrayContainsAny: widget.blendType),
                                            Filter('grade',
                                                whereIn: widget.grade),
                                            Filter('cost',
                                                isGreaterThanOrEqualTo: widget.initialcost),
                                            Filter('cost',
                                                isLessThanOrEqualTo: widget.finalcost),
                                          )).orderBy('cost')),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<TeabagRecord>
                                    listViewTeabagRecordList =
                                    snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                      listViewTeabagRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewTeabagRecord =
                                        listViewTeabagRecordList[
                                        listViewIndex];
                                        return Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    listViewTeabagRecord.rS,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    listViewTeabagRecord
                                                        .invoiceNumber,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    listViewTeabagRecord.garden,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    listViewTeabagRecord.grade,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    listViewTeabagRecord.kgsBag
                                                        .toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    listViewTeabagRecord.cost
                                                        .toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    listViewTeabagRecord.count
                                                        .toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  listViewTeabagRecord.source,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  listViewTeabagRecord
                                                      .leafScore,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  listViewTeabagRecord
                                                      .liquorScore,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Builder(
                                                  builder: (context) {
                                                    final blendList =
                                                    listViewTeabagRecord
                                                        .blend
                                                        .toList();
                                                    return Column(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: List.generate(
                                                          blendList.length,
                                                              (blendListIndex) {
                                                            final blendListItem =
                                                            blendList[
                                                            blendListIndex];
                                                            return Text(
                                                              blendListItem,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium,
                                                            );
                                                          }),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ].addToEnd(SizedBox(height: 24)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
