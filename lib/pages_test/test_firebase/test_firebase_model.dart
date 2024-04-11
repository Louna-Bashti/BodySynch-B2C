import '/flutter_flow/flutter_flow_util.dart';
import 'test_firebase_widget.dart' show TestFirebaseWidget;
import 'package:flutter/material.dart';

class TestFirebaseModel extends FlutterFlowModel<TestFirebaseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
