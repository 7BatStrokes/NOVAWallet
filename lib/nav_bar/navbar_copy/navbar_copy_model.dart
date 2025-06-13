import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_view_widget/home_view_widget_widget.dart';
import '/profile/profile_wid/profile_wid_widget.dart';
import '/statistics/stastic_widget/stastic_widget_widget.dart';
import 'navbar_copy_widget.dart' show NavbarCopyWidget;
import 'package:flutter/material.dart';

class NavbarCopyModel extends FlutterFlowModel<NavbarCopyWidget> {
  ///  Local state fields for this page.

  int? bottomAdd = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for HomeViewWidget component.
  late HomeViewWidgetModel homeViewWidgetModel;
  // Model for StasticWidget component.
  late StasticWidgetModel stasticWidgetModel;
  // Model for ProfileWid component.
  late ProfileWidModel profileWidModel;

  @override
  void initState(BuildContext context) {
    homeViewWidgetModel = createModel(context, () => HomeViewWidgetModel());
    stasticWidgetModel = createModel(context, () => StasticWidgetModel());
    profileWidModel = createModel(context, () => ProfileWidModel());
  }

  @override
  void dispose() {
    homeViewWidgetModel.dispose();
    stasticWidgetModel.dispose();
    profileWidModel.dispose();
  }
}
