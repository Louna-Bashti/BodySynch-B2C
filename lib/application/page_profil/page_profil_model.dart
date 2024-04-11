import '/flutter_flow/flutter_flow_util.dart';
import 'page_profil_widget.dart' show PageProfilWidget;
import 'package:flutter/material.dart';

class PageProfilModel extends FlutterFlowModel<PageProfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
