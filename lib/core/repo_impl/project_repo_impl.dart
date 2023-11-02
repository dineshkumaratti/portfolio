import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dinesh_portfolio/constants/constants.dart';
import 'package:dinesh_portfolio/core/entities/project_entity.dart';
import 'package:dinesh_portfolio/core/entities/skill_entity.dart';
import 'package:dinesh_portfolio/core/models/project_model.dart';
import 'package:dinesh_portfolio/core/models/skill_model.dart';
import 'package:dinesh_portfolio/core/request_models/project_req_model.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';
import 'package:dinesh_portfolio/domain/project_repository.dart';

import '../request_models/upload_pro_model.dart';

class ProjectRepoImpl implements ProjectRepository {
  ProjectRepoImpl(this.fireStore);
  FirebaseFirestore? fireStore;
  @override
  Future<DataState<List<ProjectEntity>>> getProjects(
      {required ProjectReqModel? model}) async {
    try {
      var coll = fireStore!.collection(model!.collName!);
      var snapData = model.company!.toLowerCase() == 'all'
          ? await coll.get()
          : await coll
              .where(
                Constants.company,
                isEqualTo: model.company!.toUpperCase(),
              )
              .get();
      var data = snapData.docs
          .map(
            (e) => ProjectModel.fromJson(
              e.data(),
            ),
          )
          .toList();
      return DataSuccess(data);
    } catch (e) {
      return DataFailed(
        ServerFailure(
          serverErrorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> uploadProject({required UploadModel? model}) async {
    try {
      await fireStore!.collection(model!.reqModel!.collName!).add(
            model.model!.toJson(),
          );
      return const DataSuccess(true);
    } catch (e) {
      return DataFailed(
        ServerFailure(
          serverErrorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<SkillEntity>> getSkillsList() async {
    try {
      var data = await fireStore!
          .collection(Constants.skills)
          .doc(Constants.manSkills)
          .get();
      var man = SkillModel.fromJson(data.data()!);
      return DataSuccess(man);
    } catch (e) {
      return DataFailed(
        ServerFailure(
          serverErrorMsg: e.toString(),
        ),
      );
    }
  }
}
