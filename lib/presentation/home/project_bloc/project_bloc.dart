import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:dinesh_portfolio/constants/constants.dart';
import 'package:dinesh_portfolio/core/di/locator.dart';
import 'package:dinesh_portfolio/core/entities/project_entity.dart';
import 'package:dinesh_portfolio/core/entities/skill_entity.dart';
import 'package:dinesh_portfolio/core/models/project_model.dart';
import 'package:dinesh_portfolio/core/request_models/project_req_model.dart';
import 'package:dinesh_portfolio/core/request_models/upload_pro_model.dart';
import 'package:dinesh_portfolio/core/use_cases/get_projects.dart';
import 'package:dinesh_portfolio/core/use_cases/upload_project_usecase.dart';
import 'package:dinesh_portfolio/domain/data_state.dart';

import '../../../core/use_cases/get_skills_usecase.dart';

part 'project_event.dart';
part 'project_state.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(ProjectState.init()) {
    on<LoadSkillsEvent>(
      (event, emit) async {
        //
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        try {
          await Future.delayed(const Duration(seconds: 1));
          var skills = await getIt<GetSkillsUsecase>().call('');
          if (skills is DataSuccess) {
            emit(
              state.copyWith(
                skillEntity: skills.data,
              ),
            );
          } else {
            emit(
              state.copyWith(
                hasError: true,
                errorMsg: skills.failure!.errorMessage,
              ),
            );
          }
        } catch (e) {
          emit(
            state.copyWith(errorMsg: e.toString()),
          );
        } finally {
          emit(
            state.copyWith(
              isLoading: false,
            ),
          );
        }
      },
    );
    on<UpdateCategoryEvent>((event, emit) {
      emit(
        state.copyWith(
          selectedCategory: event.category,
        ),
      );
    });
    on<EmptyProjectsEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        await Future.delayed(const Duration(seconds: 2));
        emit(
          state.copyWith(
            isLoading: false,
          ),
        );
      },
    );
    on<UploadProjectEvent>(
      (event, emit) async {
        //
        try {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          var upload = await getIt<UploadProjectUsecase>().call(
            UploadModel(
              model: event.projectModel,
              reqModel: ProjectReqModel(collName: Constants.collName),
            ),
          );
          if (upload is DataSuccess) {
            emit(
              state.copyWith(
                isUploaded: upload.data,
              ),
            );
          } else {
            emit(
              state.copyWith(
                isUploaded: upload.data,
                hasError: true,
                errorMsg: upload.failure!.errorMessage,
              ),
            );
          }
        } catch (e) {
          emit(
            state.copyWith(
              hasError: true,
              errorMsg: e.toString(),
            ),
          );
        } finally {
          emit(
            state.copyWith(
              isLoading: false,
            ),
          );
        }
      },
    );

    on<LoadProjectsEvent>(
      (event, emit) async {
        //
        try {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          await Future.delayed(const Duration(seconds: 1));
          var projects = await getIt<GetProjects>().call(
            ProjectReqModel(
              collName: Constants.collName,
              company: event.category,
            ),
          );
          if (projects is DataSuccess) {
            emit(
              state.copyWith(
                projects: projects.data,
              ),
            );
          } else {
            //
            emit(
              state.copyWith(
                hasError: true,
                errorMsg: projects.failure?.errorMessage ?? Constants.errorMsg,
              ),
            );
          }
        } catch (e) {
          emit(
            state.copyWith(
              hasError: true,
              errorMsg: e.toString(),
            ),
          );
        } finally {
          emit(
            state.copyWith(
              isLoading: false,
            ),
          );
        }
      },
    );
  }
}
