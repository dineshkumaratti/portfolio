// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'project_bloc.dart';

class ProjectState extends Equatable {
  const ProjectState({
    this.projects,
    this.isLoading = false,
    this.hasError = false,
    this.errorMsg,
    this.isUploaded = false,
    this.selectedCategory = 'ALL',
    this.skillEntity,
  });
  final List<ProjectEntity>? projects;
  final bool? isLoading;
  final bool? isUploaded;
  final bool? hasError;
  final String? errorMsg;
  final String? selectedCategory;
  final SkillEntity? skillEntity;
  ProjectState.init()
      : projects = [],
        skillEntity = SkillEntity(skill: []),
        isLoading = false,
        errorMsg = '',
        isUploaded = false,
        selectedCategory = 'ALL',
        hasError = false;

  @override
  List get props => [
        projects,
        isLoading,
        errorMsg,
        hasError,
        isUploaded,
        selectedCategory,
        skillEntity
      ];

  ProjectState copyWith({
    List<ProjectEntity>? projects,
    bool? isLoading,
    bool? isUploaded,
    bool? hasError,
    String? errorMsg,
    String? selectedCategory,
    SkillEntity? skillEntity,
  }) {
    return ProjectState(
      projects: projects ?? this.projects,
      isLoading: isLoading ?? this.isLoading,
      isUploaded: isUploaded ?? this.isUploaded,
      hasError: hasError ?? this.hasError,
      errorMsg: errorMsg ?? this.errorMsg,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      skillEntity: skillEntity ?? this.skillEntity,
    );
  }
}
