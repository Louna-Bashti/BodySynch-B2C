import '/flutter_flow/flutter_flow_util.dart';
import 'repas_widget.dart' show RepasWidget;
import 'package:flutter/material.dart';

class RepasModel extends FlutterFlowModel<RepasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
