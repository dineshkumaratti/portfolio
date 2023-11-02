import 'package:dinesh_portfolio/core/request_models/upload_pro_model.dart';
import 'package:dinesh_portfolio/core/use_cases/usecase.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';

import '../../domain/project_repository.dart';

class UploadProjectUsecase implements UseCase<DataState<bool>, UploadModel> {
  final ProjectRepository? _repo;
  UploadProjectUsecase(this._repo);

  @override
  Future<DataState<bool>> call(UploadModel params) async {
    return await _repo!.uploadProject(model: params);
  }
}
