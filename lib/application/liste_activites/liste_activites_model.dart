import '/flutter_flow/flutter_flow_util.dart';
import 'liste_activites_widget.dart' show ListeActivitesWidget;
import 'package:flutter/material.dart';

class ListeActivitesModel extends FlutterFlowModel<ListeActivitesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
