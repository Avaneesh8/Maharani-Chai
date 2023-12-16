import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/slidenavbar/slidenavbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dash_board_widget.dart' show DashBoardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashBoardModel extends FlutterFlowModel<DashBoardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Slidenavbar component.
  late SlidenavbarModel slidenavbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidenavbarModel = createModel(context, () => SlidenavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    slidenavbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
