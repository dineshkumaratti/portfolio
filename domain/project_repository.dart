import 'package:dinesh_portfolio/core/entities/project_entity.dart';
import 'package:dinesh_portfolio/core/request_models/project_req_model.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';

import '../core/entities/skill_entity.dart';
import '../core/request_models/upload_pro_model.dart';

abstract class ProjectRepository {
  Future<DataState<List<ProjectEntity>>> getProjects(
      {required ProjectReqModel? model});
  Future<DataState<bool>> uploadProject({required UploadModel? model});
  Future<DataState<SkillEntity>> getSkillsList();
}
