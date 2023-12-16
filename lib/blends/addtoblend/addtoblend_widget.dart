import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addtoblend_model.dart';
export 'addtoblend_model.dart';

class AddtoblendWidget extends StatefulWidget {
  const AddtoblendWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String? type;

  @override
  _AddtoblendWidgetState createState() => _AddtoblendWidgetState();
}

class _AddtoblendWidgetState extends State<AddtoblendWidget> {
  late AddtoblendModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddtoblendModel());

    _model.textController ??= TextEditingController(text: '1');
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
                navselected: 2,
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: StreamBuilder<List<TeabagRecord>>(
                  stream: queryTeabagRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<TeabagRecord> maxWidthTeabagRecordList =
                        snapshot.data!;
                    return Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 1370.0,
                      ),
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
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
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 15.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.chevron_left,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 35.0,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Add to ${widget.type}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'Items whch can be added to the blend',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Screenshot_2023-12-10_163813.png',
                                                width: 44.0,
                                                height: 44.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Manager',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                              Text(
                                                currentUserEmail,
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Container(
                                        width: 250.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Enter ratio',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
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
                                                  OutlineInputBorder(
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
                                                .bodyMedium,
                                            textAlign: TextAlign.start,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 5.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.8,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                  flex: 4,
                                                  child: Text(
                                                    'Source',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                  flex: 4,
                                                  child: Text(
                                                    'Leaf Score',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                  flex: 4,
                                                  child: Text(
                                                    'Liquor Score',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
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
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
                                                  ),
                                                ),
                                              Expanded(
                                                flex: 1,
                                                child: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  StreamBuilder<List<TeabagRecord>>(
                                    stream: queryTeabagRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20.0,
                                            height: 20.0,
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
                                              color: () {
                                                if ((listViewTeabagRecord
                                                            .count <=
                                                        5) &&
                                                    (listViewTeabagRecord.blend
                                                            .contains(
                                                                widget.type) ==
                                                        true)) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent2;
                                                } else if (listViewTeabagRecord
                                                        .blend
                                                        .contains(
                                                            widget.type) ==
                                                    true) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondary;
                                                } else if (listViewTeabagRecord
                                                        .count <=
                                                    0) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (listViewTeabagRecord
                                                        .count <=
                                                    5) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else {
                                                  return Color(0x00000000);
                                                }
                                              }(),
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
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                      listViewTeabagRecord
                                                          .garden,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                          .grade,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                          .kgsBag
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Text(
                                                    listViewTeabagRecord.source,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Text(
                                                    listViewTeabagRecord
                                                        .leafScore,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Text(
                                                    listViewTeabagRecord
                                                        .liquorScore,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall,
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
                                                Expanded(
                                                  flex: 1,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (listViewTeabagRecord
                                                          .blend
                                                          .contains(
                                                              widget.type)) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Already Present in the blend',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                          ),
                                                        );
                                                      } else {
                                                        await listViewTeabagRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'Blend': FieldValue
                                                                  .arrayUnion([
                                                                widget.type
                                                              ]),
                                                            },
                                                          ),
                                                        });

                                                        await BlendsRecord
                                                            .collection
                                                            .doc()
                                                            .set({
                                                          ...createBlendsRecordData(
                                                            rS: listViewTeabagRecord
                                                                .rS,
                                                            invoiceNumber:
                                                                listViewTeabagRecord
                                                                    .invoiceNumber,
                                                            garden:
                                                                listViewTeabagRecord
                                                                    .garden,
                                                            grade:
                                                                listViewTeabagRecord
                                                                    .grade,
                                                            kgsBag:
                                                                listViewTeabagRecord
                                                                    .kgsBag,
                                                            cost:
                                                                listViewTeabagRecord
                                                                    .cost,
                                                            count:
                                                                listViewTeabagRecord
                                                                    .count,
                                                            source:
                                                                listViewTeabagRecord
                                                                    .source,
                                                            leafScore:
                                                                listViewTeabagRecord
                                                                    .leafScore,
                                                            liquorScore:
                                                                listViewTeabagRecord
                                                                    .liquorScore,
                                                            blendType:
                                                                widget.type,
                                                            ratio: double
                                                                .tryParse(_model
                                                                    .textController
                                                                    .text),
                                                            docRefTeabag:
                                                                listViewTeabagRecord
                                                                    .reference,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'Blend':
                                                                  listViewTeabagRecord
                                                                      .blend,
                                                            },
                                                          ),
                                                        });
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Added to the ${widget.type} blend',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    2000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                          ),
                                                        );
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ].addToEnd(SizedBox(height: 24.0)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
