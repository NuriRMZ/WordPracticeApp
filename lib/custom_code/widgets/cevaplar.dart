// Automatic FlutterFlow imports
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'answers_model.dart';
export 'answers_model.dart';

class AnswersWidget extends StatefulWidget {
  const AnswersWidget({
    super.key,
    required this.answer,
    required this.answerText,
    required this.answerV,
    required this.check,
  });

  final bool? answer;
  final String? answerText;
  final String? answerV;
  final bool? check;

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  late AnswersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnswersModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      decoration: BoxDecoration(
        color: () {
          if (widget!.answer! && widget!.check!) {
            return FlutterFlowTheme.of(context).success;
          } else if (!widget!.answer! && widget!.check!) {
            return FlutterFlowTheme.of(context).error;
          } else {
            return FlutterFlowTheme.of(context).primaryBackground;
          }
        }(),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color(0x09000000),
                        offset: Offset(
                          4,
                          4,
                        ),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.answerV,
                        'A',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 18,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.answerText,
                            'Text',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: widget!.answer! && widget!.check!
                                    ? FlutterFlowTheme.of(context)
                                        .primaryBackground
                                    : FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 43,
              height: 43,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color(0x09000000),
                    offset: Offset(
                      4,
                      4,
                    ),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(100),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 2,
                ),
              ),
              child: Visibility(
                visible: widget!.check ?? true,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget!.answer ?? true)
                      Icon(
                        Icons.check_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20,
                      ),
                    if (!widget!.answer!)
                      Icon(
                        Icons.close_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
