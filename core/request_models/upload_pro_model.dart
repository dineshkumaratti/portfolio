import 'package:dinesh_portfolio/core/models/project_model.dart';
import 'package:dinesh_portfolio/core/request_models/project_req_model.dart';

class UploadModel {
  final ProjectReqModel? reqModel;
  final ProjectModel? model;
  UploadModel({required this.model, required this.reqModel});
}
