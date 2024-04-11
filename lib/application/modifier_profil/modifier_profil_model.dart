import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modifier_profil_widget.dart' show ModifierProfilWidget;
import 'package:flutter/material.dart';

class ModifierProfilModel extends FlutterFlowModel<ModifierProfilWidget> {
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
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  DateTime? datePicked4;
  // State field(s) for Taille widget.
  FocusNode? tailleFocusNode;
  TextEditingController? tailleController;
  String? Function(BuildContext, String?)? tailleControllerValidator;
  DateTime? datePicked5;
  DateTime? datePicked6;
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

    emailFocusNode?.dispose();
    emailController?.dispose();

    tailleFocusNode?.dispose();
    tailleController?.dispose();
  }
}
