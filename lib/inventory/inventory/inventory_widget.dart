import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'inventory_model.dart';
export 'inventory_model.dart';

class InventoryWidget extends StatefulWidget {
  const InventoryWidget({Key? key}) : super(key: key);

  @override
  _InventoryWidgetState createState() => _InventoryWidgetState();
}

class _InventoryWidgetState extends State<InventoryWidget> {
  late InventoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryModel());

    _model.inititalcostController ??= TextEditingController(text: '100');
    _model.inititalcostFocusNode ??= FocusNode();

    _model.maximumcostController ??= TextEditingController(text: '700');
    _model.maximumcostFocusNode ??= FocusNode();

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
                                          Text(
                                            'Inventory',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium,
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                            child: Text(
                                              'Stock Present Currently',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: StreamBuilder<
                                                            List<
                                                                TypeOfBlendRecord>>(
                                                          stream:
                                                          queryTypeOfBlendRecord(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<TypeOfBlendRecord>
                                                            checkboxGroupTypeOfBlendRecordList =
                                                            snapshot.data!;
                                                            return FlutterFlowCheckboxGroup(
                                                              options: checkboxGroupTypeOfBlendRecordList
                                                                  .map((e) => e
                                                                  .blendsType)
                                                                  .toList(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                  _model.checkboxGroupValues1 =
                                                                      val),
                                                              controller: _model
                                                                  .checkboxGroupValueController1 ??=
                                                                  FormFieldController<
                                                                      List<
                                                                          String>>(
                                                                    checkboxGroupTypeOfBlendRecordList
                                                                        .map((e) =>
                                                                    e.blendsType)
                                                                        .toList()
                                                                        .take(1)
                                                                        .toList(),
                                                                  ),
                                                              activeColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              checkColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .info,
                                                              checkboxBorderColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryText,
                                                              textStyle:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium,
                                                              checkboxBorderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  4),
                                                              initialized: _model
                                                                  .checkboxGroupValues1 !=
                                                                  null,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: StreamBuilder<
                                                            List<SourceRecord>>(
                                                          stream:
                                                          querySourceRecord(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<SourceRecord>
                                                            checkboxGroupSourceRecordList =
                                                            snapshot.data!;
                                                            return FlutterFlowCheckboxGroup(
                                                              options:
                                                              checkboxGroupSourceRecordList
                                                                  .map((e) =>
                                                              e.source)
                                                                  .toList(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                  _model.checkboxGroupValues2 =
                                                                      val),
                                                              controller: _model
                                                                  .checkboxGroupValueController2 ??=
                                                                  FormFieldController<
                                                                      List<
                                                                          String>>(
                                                                    checkboxGroupSourceRecordList
                                                                        .map((e) =>
                                                                    e.source)
                                                                        .toList()
                                                                        .take(1)
                                                                        .toList(),
                                                                  ),
                                                              activeColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              checkColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .info,
                                                              checkboxBorderColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryText,
                                                              textStyle:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium,
                                                              checkboxBorderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  4),
                                                              initialized: _model
                                                                  .checkboxGroupValues2 !=
                                                                  null,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: StreamBuilder<
                                                            List<GradeRecord>>(
                                                          stream:
                                                          queryGradeRecord(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<GradeRecord>
                                                            checkboxGroupGradeRecordList =
                                                            snapshot.data!;
                                                            return FlutterFlowCheckboxGroup(
                                                              options:
                                                              checkboxGroupGradeRecordList
                                                                  .map((e) =>
                                                              e.grade)
                                                                  .toList(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                  _model.checkboxGroupValues3 =
                                                                      val),
                                                              controller: _model
                                                                  .checkboxGroupValueController3 ??=
                                                                  FormFieldController<
                                                                      List<
                                                                          String>>(
                                                                    checkboxGroupGradeRecordList
                                                                        .map((e) =>
                                                                    e.grade)
                                                                        .toList()
                                                                        .take(1)
                                                                        .toList(),
                                                                  ),
                                                              activeColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              checkColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .info,
                                                              checkboxBorderColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryText,
                                                              textStyle:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium,
                                                              checkboxBorderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  4),
                                                              initialized: _model
                                                                  .checkboxGroupValues3 !=
                                                                  null,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                            child: Container(
                                                              width: 200,
                                                              decoration:
                                                              BoxDecoration(),
                                                              child: Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    8,
                                                                    8,
                                                                    8,
                                                                    8),
                                                                child:
                                                                TextFormField(
                                                                  controller: _model
                                                                      .inititalcostController,
                                                                  focusNode: _model
                                                                      .inititalcostFocusNode,
                                                                  autofocus:
                                                                  true,
                                                                  obscureText:
                                                                  false,
                                                                  decoration:
                                                                  InputDecoration(
                                                                    labelText:
                                                                    'Minimum Value',
                                                                    labelStyle:
                                                                    FlutterFlowTheme.of(context)
                                                                        .labelMedium,
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                        .labelMedium,
                                                                    enabledBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                        2,
                                                                      ),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          0),
                                                                    ),
                                                                    focusedBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                        2,
                                                                      ),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          0),
                                                                    ),
                                                                    errorBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                        2,
                                                                      ),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                      borderSide:
                                                                      BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                        2,
                                                                      ),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          0),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium,
                                                                  validator: _model
                                                                      .inititalcostControllerValidator
                                                                      .asValidator(
                                                                      context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 200,
                                                            decoration:
                                                            BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  8,
                                                                  8,
                                                                  8,
                                                                  8),
                                                              child:
                                                              TextFormField(
                                                                controller: _model
                                                                    .maximumcostController,
                                                                focusNode: _model
                                                                    .maximumcostFocusNode,
                                                                autofocus: true,
                                                                obscureText:
                                                                false,
                                                                decoration:
                                                                InputDecoration(
                                                                  labelText:
                                                                  'Maximum Value',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                  enabledBorder:
                                                                  UnderlineInputBorder(
                                                                    borderSide:
                                                                    BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .alternate,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(0),
                                                                  ),
                                                                  focusedBorder:
                                                                  UnderlineInputBorder(
                                                                    borderSide:
                                                                    BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .primary,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(0),
                                                                  ),
                                                                  errorBorder:
                                                                  UnderlineInputBorder(
                                                                    borderSide:
                                                                    BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .error,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                  UnderlineInputBorder(
                                                                    borderSide:
                                                                    BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .error,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium,
                                                                validator: _model
                                                                    .maximumcostControllerValidator
                                                                    .asValidator(
                                                                    context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            'FilteredList',
                                                            queryParameters: {
                                                              'blendType':
                                                              serializeParam(
                                                                _model
                                                                    .checkboxGroupValues1,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'source':
                                                              serializeParam(
                                                                _model
                                                                    .checkboxGroupValues2,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'grade':
                                                              serializeParam(
                                                                _model
                                                                    .checkboxGroupValues3,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'initialcost':
                                                              serializeParam(
                                                                double.tryParse(
                                                                    _model
                                                                        .inititalcostController
                                                                        .text),
                                                                ParamType
                                                                    .double,
                                                              ),
                                                              'finalcost':
                                                              serializeParam(
                                                                double.tryParse(
                                                                    _model
                                                                        .maximumcostController
                                                                        .text),
                                                                ParamType
                                                                    .double,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                              TransitionInfo(
                                                                hasTransition:
                                                                true,
                                                                transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                    0),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        text: 'Filter',
                                                        icon: Icon(
                                                          Icons
                                                              .restart_alt_rounded,
                                                          size: 15,
                                                        ),
                                                        options:
                                                        FFButtonOptions(
                                                          height: 40,
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(24,
                                                              0, 24, 0),
                                                          iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              0, 0, 0),
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .primary,
                                                          textStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .titleSmall
                                                              .override(
                                                            fontFamily:
                                                            'Readex Pro',
                                                            color: Colors
                                                                .white,
                                                          ),
                                                          elevation: 3,
                                                          borderSide:
                                                          BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(15),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed('AddTea');
                                                },
                                                text: 'Add New',
                                                icon: Icon(
                                                  Icons.add_rounded,
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .info,
                                                  size: 15,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  iconPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .primary,
                                                  textStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .titleSmall
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    fontSize: 14,
                                                  ),
                                                  elevation: 2,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(15),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                                  stream: queryTeabagRecord(),
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
