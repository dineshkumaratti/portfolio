import 'package:dinesh_portfolio/core/entities/project_entity.dart';
import 'package:dinesh_portfolio/core/request_models/project_req_model.dart';
import 'package:dinesh_portfolio/core/use_cases/usecase.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';
import 'package:dinesh_portfolio/domain/project_repository.dart';

class GetProjects
    implements UseCase<DataState<List<ProjectEntity>>, ProjectReqModel> {
  final ProjectRepository _repo;
  GetProjects(this._repo);
  @override
  Future<DataState<List<ProjectEntity>>> call(ProjectReqModel params) async {
    return _repo.getProjects(model: params);
  }
}
