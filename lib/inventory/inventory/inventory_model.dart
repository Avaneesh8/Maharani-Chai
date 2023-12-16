import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventory_widget.dart' show InventoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryModel extends FlutterFlowModel<InventoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Slidenavbar component.
  late SlidenavbarModel slidenavbarModel;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues1;
  FormFieldController<List<String>>? checkboxGroupValueController1;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues2;
  FormFieldController<List<String>>? checkboxGroupValueController2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues3;
  FormFieldController<List<String>>? checkboxGroupValueController3;
  // State field(s) for Inititalcost widget.
  FocusNode? inititalcostFocusNode;
  TextEditingController? inititalcostController;
  String? Function(BuildContext, String?)? inititalcostControllerValidator;
  // State field(s) for maximumcost widget.
  FocusNode? maximumcostFocusNode;
  TextEditingController? maximumcostController;
  String? Function(BuildContext, String?)? maximumcostControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidenavbarModel = createModel(context, () => SlidenavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    slidenavbarModel.dispose();
    inititalcostFocusNode?.dispose();
    inititalcostController?.dispose();

    maximumcostFocusNode?.dispose();
    maximumcostController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
