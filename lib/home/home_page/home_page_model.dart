import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_view_widget/home_view_widget_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeViewWidget component.
  late HomeViewWidgetModel homeViewWidgetModel;

  @override
  void initState(BuildContext context) {
    homeViewWidgetModel = createModel(context, () => HomeViewWidgetModel());
  }

  @override
  void dispose() {
    homeViewWidgetModel.dispose();
  }
}
