import '/flutter_flow/flutter_flow_util.dart';
import 'liste_repas_widget.dart' show ListeRepasWidget;
import 'package:flutter/material.dart';

class ListeRepasModel extends FlutterFlowModel<ListeRepasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
