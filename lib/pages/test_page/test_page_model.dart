import '/components/cevap_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_page_widget.dart' show TestPageWidget;
import 'package:flutter/material.dart';

class TestPageModel extends FlutterFlowModel<TestPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Cevap component.
  late CevapModel cevapModel1;
  // Model for Cevap component.
  late CevapModel cevapModel2;
  // Model for Cevap component.
  late CevapModel cevapModel3;
  // Model for Cevap component.
  late CevapModel cevapModel4;

  @override
  void initState(BuildContext context) {
    cevapModel1 = createModel(context, () => CevapModel());
    cevapModel2 = createModel(context, () => CevapModel());
    cevapModel3 = createModel(context, () => CevapModel());
    cevapModel4 = createModel(context, () => CevapModel());
  }

  @override
  void dispose() {
    cevapModel1.dispose();
    cevapModel2.dispose();
    cevapModel3.dispose();
    cevapModel4.dispose();
  }
}
