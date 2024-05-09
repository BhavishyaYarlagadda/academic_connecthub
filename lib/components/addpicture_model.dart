import '/flutter_flow/flutter_flow_util.dart';
import 'addpicture_widget.dart' show AddpictureWidget;
import 'package:flutter/material.dart';

class AddpictureModel extends FlutterFlowModel<AddpictureWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
