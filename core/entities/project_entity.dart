class ProjectEntity {
  final String? title;
  final String? description;
  final String? client;
  final String? duration;
  // @JsonKey(name: 'category',)
  final String? company;
  final String? techs;

  ProjectEntity({
    this.title,
    this.description,
    this.company,
    this.client,
    this.duration,
    this.techs,
  });
}
