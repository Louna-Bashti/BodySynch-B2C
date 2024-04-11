import '/flutter_flow/flutter_flow_util.dart';
import 'bienvenue_widget.dart' show BienvenueWidget;
import 'package:flutter/material.dart';

class BienvenueModel extends FlutterFlowModel<BienvenueWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
