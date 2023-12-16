import '/components/dark_light_switch_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'slidenavbar_widget.dart' show SlidenavbarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SlidenavbarModel extends FlutterFlowModel<SlidenavbarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for DarkLightSwitchSmall component.
  late DarkLightSwitchSmallModel darkLightSwitchSmallModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    darkLightSwitchSmallModel =
        createModel(context, () => DarkLightSwitchSmallModel());
  }

  void dispose() {
    darkLightSwitchSmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
