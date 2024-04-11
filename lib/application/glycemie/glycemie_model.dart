import '/flutter_flow/flutter_flow_util.dart';
import 'glycemie_widget.dart' show GlycemieWidget;
import 'package:flutter/material.dart';

class GlycemieModel extends FlutterFlowModel<GlycemieWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
