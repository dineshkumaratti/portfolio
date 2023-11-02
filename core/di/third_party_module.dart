import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:dinesh_portfolio/core/di/services/dio/firestore_factory.dart';
import 'package:dinesh_portfolio/core/repo_impl/project_repo_impl.dart';
import 'package:dinesh_portfolio/core/use_cases/get_projects.dart';
import 'package:dinesh_portfolio/core/use_cases/upload_project_usecase.dart';

import '../use_cases/get_skills_usecase.dart';

@module
abstract class ThirdPartyModule {
  @singleton
  Future<FirebaseFirestore> get fire async => await FirestoreFactory().create();
  @singleton
  Future<ProjectRepoImpl> get proRepo async => ProjectRepoImpl(await fire);
  @singleton
  Future<GetProjects> get getProjects async => GetProjects(await proRepo);
  @singleton
  Future<UploadProjectUsecase> get uploadusecase async =>
      UploadProjectUsecase(await proRepo);
  @singleton
  Future<GetSkillsUsecase> get getSkill async =>
      GetSkillsUsecase(await proRepo);
}
