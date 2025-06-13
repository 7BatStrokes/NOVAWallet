import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_wid/profile_wid_widget.dart';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:flutter/material.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileWid component.
  late ProfileWidModel profileWidModel;

  @override
  void initState(BuildContext context) {
    profileWidModel = createModel(context, () => ProfileWidModel());
  }

  @override
  void dispose() {
    profileWidModel.dispose();
  }
}
