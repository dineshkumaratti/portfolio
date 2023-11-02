part of 'project_bloc.dart';

abstract class ProjectEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadProjectsEvent extends ProjectEvent {
  final String? category;
  LoadProjectsEvent({this.category = 'all'});
}

class EmptyProjectsEvent extends ProjectEvent {}

class LoadSkillsEvent extends ProjectEvent {}

class UpdateCategoryEvent extends ProjectEvent {
  final String? category;
  UpdateCategoryEvent({this.category = 'ALL'});
}

class UploadProjectEvent extends ProjectEvent {
  final ProjectModel? projectModel;
  UploadProjectEvent({required this.projectModel});
}
