import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_tea_widget.dart' show AddTeaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTeaModel extends FlutterFlowModel<AddTeaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Slidenavbar component.
  late SlidenavbarModel slidenavbarModel;
  // State field(s) for RS widget.
  String? rsValue;
  FormFieldController<String>? rsValueController;
  // State field(s) for Source widget.
  String? sourceValue;
  FormFieldController<String>? sourceValueController;
  // State field(s) for Grade widget.
  String? gradeValue;
  FormFieldController<String>? gradeValueController;
  // State field(s) for LeafScore widget.
  String? leafScoreValue;
  FormFieldController<String>? leafScoreValueController;
  // State field(s) for LiquorScore widget.
  String? liquorScoreValue;
  FormFieldController<String>? liquorScoreValueController;
  // State field(s) for Garden widget.
  FocusNode? gardenFocusNode;
  TextEditingController? gardenController;
  String? Function(BuildContext, String?)? gardenControllerValidator;
  // State field(s) for InvoiveNumber widget.
  FocusNode? invoiveNumberFocusNode;
  TextEditingController? invoiveNumberController;
  String? Function(BuildContext, String?)? invoiveNumberControllerValidator;
  // State field(s) for Cost widget.
  FocusNode? costFocusNode;
  TextEditingController? costController;
  String? Function(BuildContext, String?)? costControllerValidator;
  // State field(s) for Totalcount widget.
  FocusNode? totalcountFocusNode;
  TextEditingController? totalcountController;
  String? Function(BuildContext, String?)? totalcountControllerValidator;
  // State field(s) for kgbags widget.
  FocusNode? kgbagsFocusNode;
  TextEditingController? kgbagsController;
  String? Function(BuildContext, String?)? kgbagsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidenavbarModel = createModel(context, () => SlidenavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    slidenavbarModel.dispose();
    gardenFocusNode?.dispose();
    gardenController?.dispose();

    invoiveNumberFocusNode?.dispose();
    invoiveNumberController?.dispose();

    costFocusNode?.dispose();
    costController?.dispose();

    totalcountFocusNode?.dispose();
    totalcountController?.dispose();

    kgbagsFocusNode?.dispose();
    kgbagsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
