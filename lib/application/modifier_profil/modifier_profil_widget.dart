import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'modifier_profil_model.dart';
export 'modifier_profil_model.dart';

class ModifierProfilWidget extends StatefulWidget {
  const ModifierProfilWidget({super.key});

  @override
  State<ModifierProfilWidget> createState() => _ModifierProfilWidgetState();
}

class _ModifierProfilWidgetState extends State<ModifierProfilWidget> {
  late ModifierProfilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifierProfilModel());

    _model.usernameController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.userName, ''));
    _model.usernameFocusNode ??= FocusNode();

    _model.nomController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.nom, ''));
    _model.nomFocusNode ??= FocusNode();

    _model.prenomController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.prenom, ''));
    _model.prenomFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();

    _model.tailleController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.taille, 0.0).toString());
    _model.tailleFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Modification de compte',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Modifier mon compte',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 190.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.usernameController,
                              focusNode: _model.usernameFocusNode,
                              onFieldSubmitted: (_) async {
                                final datePicked1Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                );

                                if (datePicked1Date != null) {
                                  safeSetState(() {
                                    _model.datePicked1 = DateTime(
                                      datePicked1Date.year,
                                      datePicked1Date.month,
                                      datePicked1Date.day,
                                    );
                                  });
                                }
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              minLines: null,
                              validator: _model.usernameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.nomController,
                              focusNode: _model.nomFocusNode,
                              onFieldSubmitted: (_) async {
                                final datePicked2Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                );

                                if (datePicked2Date != null) {
                                  safeSetState(() {
                                    _model.datePicked2 = DateTime(
                                      datePicked2Date.year,
                                      datePicked2Date.month,
                                      datePicked2Date.day,
                                    );
                                  });
                                }
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Nom',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              minLines: null,
                              validator: _model.nomControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.prenomController,
                              focusNode: _model.prenomFocusNode,
                              onFieldSubmitted: (_) async {
                                final datePicked3Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                );

                                if (datePicked3Date != null) {
                                  safeSetState(() {
                                    _model.datePicked3 = DateTime(
                                      datePicked3Date.year,
                                      datePicked3Date.month,
                                      datePicked3Date.day,
                                    );
                                  });
                                }
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Prenom ',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              minLines: null,
                              validator: _model.prenomControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          TextFormField(
                            controller: _model.emailController,
                            focusNode: _model.emailFocusNode,
                            onFieldSubmitted: (_) async {
                              final datePicked4Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: getCurrentTimestamp,
                              );

                              if (datePicked4Date != null) {
                                safeSetState(() {
                                  _model.datePicked4 = DateTime(
                                    datePicked4Date.year,
                                    datePicked4Date.month,
                                    datePicked4Date.day,
                                  );
                                });
                              }
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'E-mail',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFADA4A5),
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).accent4,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                            minLines: null,
                            validator: _model.emailControllerValidator
                                .asValidator(context),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.tailleController,
                              focusNode: _model.tailleFocusNode,
                              onFieldSubmitted: (_) async {
                                final datePicked5Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                );

                                if (datePicked5Date != null) {
                                  safeSetState(() {
                                    _model.datePicked5 = DateTime(
                                      datePicked5Date.year,
                                      datePicked5Date.month,
                                      datePicked5Date.day,
                                    );
                                  });
                                }
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Taillle',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                                prefixIcon: Icon(
                                  Icons.height,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              minLines: null,
                              validator: _model.tailleControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Container(
                            width: 341.0,
                            height: 41.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 6.0, 8.0, 6.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final datePicked6Date =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: getCurrentTimestamp,
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (datePicked6Date != null) {
                                        safeSetState(() {
                                          _model.datePicked6 = DateTime(
                                            datePicked6Date.year,
                                            datePicked6Date.month,
                                            datePicked6Date.day,
                                          );
                                        });
                                      }
                                    },
                                    text: 'Sélection date',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', _model.datePicked6),
                                    'Date Naissance',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              Expanded(
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller: _model.genreValueController ??=
                                        FormFieldController<String>(
                                      _model.genreValue ??= valueOrDefault(
                                          currentUserDocument?.sexe, ''),
                                    ),
                                    options: const [
                                      'Homme',
                                      'Femme',
                                      'Autres ',
                                      'Prefere ne pas dire '
                                    ],
                                    onChanged: (val) =>
                                        setState(() => _model.genreValue = val),
                                    width: 180.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFADA4A5),
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Genre ',
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              Expanded(
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller: _model.roleValueController ??=
                                        FormFieldController<String>(
                                      _model.roleValue ??= valueOrDefault(
                                          currentUserDocument?.role, ''),
                                    ),
                                    options: const ['Sportif'],
                                    onChanged: (val) =>
                                        setState(() => _model.roleValue = val),
                                    width: 180.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFADA4A5),
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Role',
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(35.0, 560.0, 35.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await currentUserReference!.update(createUsersRecordData(
                      email: _model.emailController.text,
                      nom: _model.nomController.text,
                      prenom: _model.prenomController.text,
                      role: _model.roleValue,
                      sexe: _model.genreValue,
                      taille: double.tryParse(_model.tailleController.text),
                      userName: _model.usernameController.text,
                      dateNaiss: _model.datePicked6,
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Modifications faites avec  succes ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                    context.safePop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF714DFE), Color(0xFF9C83F7)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, -0.14),
                        end: AlignmentDirectional(-1.0, 0.14),
                      ),
                      borderRadius: BorderRadius.circular(99.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 18.0),
                          child: Text(
                            'Sauvegarder',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
