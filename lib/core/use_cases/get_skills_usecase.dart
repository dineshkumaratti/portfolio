import 'package:dinesh_portfolio/core/entities/skill_entity.dart';
import 'package:dinesh_portfolio/core/use_cases/usecase.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';
import 'package:dinesh_portfolio/domain/project_repository.dart';

class GetSkillsUsecase implements UseCase<DataState<SkillEntity>, Object> {
  final ProjectRepository repository;
  GetSkillsUsecase(this.repository);

  @override
  Future<DataState<SkillEntity>> call(Object params) async {
    return repository.getSkillsList();
  }
}
