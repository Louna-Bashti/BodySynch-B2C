import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'creation_profile_widget.dart' show CreationProfileWidget;
import 'package:flutter/material.dart';

class CreationProfileModel extends FlutterFlowModel<CreationProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  DateTime? datePicked1;
  // State field(s) for Nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomController;
  String? Function(BuildContext, String?)? nomControllerValidator;
  DateTime? datePicked2;
  // State field(s) for Prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomController;
  String? Function(BuildContext, String?)? prenomControllerValidator;
  DateTime? datePicked3;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailController1;
  String? Function(BuildContext, String?)? emailController1Validator;
  DateTime? datePicked4;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailController2;
  String? Function(BuildContext, String?)? emailController2Validator;
  DateTime? datePicked5;
  // State field(s) for Taille widget.
  FocusNode? tailleFocusNode;
  TextEditingController? tailleController;
  String? Function(BuildContext, String?)? tailleControllerValidator;
  DateTime? datePicked6;
  DateTime? datePicked7;
  // State field(s) for Genre widget.
  String? genreValue;
  FormFieldController<String>? genreValueController;
  // State field(s) for Role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    nomFocusNode?.dispose();
    nomController?.dispose();

    prenomFocusNode?.dispose();
    prenomController?.dispose();

    emailFocusNode1?.dispose();
    emailController1?.dispose();

    emailFocusNode2?.dispose();
    emailController2?.dispose();

    tailleFocusNode?.dispose();
    tailleController?.dispose();
  }
}
