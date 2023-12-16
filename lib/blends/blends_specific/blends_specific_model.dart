import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'blends_specific_widget.dart' show BlendsSpecificWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlendsSpecificModel extends FlutterFlowModel<BlendsSpecificWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Slidenavbar component.
  late SlidenavbarModel slidenavbarModel;
  // State field(s) for Numberofblends widget.
  FocusNode? numberofblendsFocusNode1;
  TextEditingController? numberofblendsController1;
  String? Function(BuildContext, String?)? numberofblendsController1Validator;
  // State field(s) for Numberofblends widget.
  FocusNode? numberofblendsFocusNode2;
  TextEditingController? numberofblendsController2;
  String? Function(BuildContext, String?)? numberofblendsController2Validator;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidenavbarModel = createModel(context, () => SlidenavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    slidenavbarModel.dispose();
    numberofblendsFocusNode1?.dispose();
    numberofblendsController1?.dispose();

    numberofblendsFocusNode2?.dispose();
    numberofblendsController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
