import '/common_component/comman_item/comman_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_view_widget_widget.dart' show HomeViewWidgetWidget;
import 'package:flutter/material.dart';

class HomeViewWidgetModel extends FlutterFlowModel<HomeViewWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for commanItem dynamic component.
  late FlutterFlowDynamicModels<CommanItemModel> commanItemModels;

  @override
  void initState(BuildContext context) {
    commanItemModels = FlutterFlowDynamicModels(() => CommanItemModel());
  }

  @override
  void dispose() {
    commanItemModels.dispose();
  }
}
