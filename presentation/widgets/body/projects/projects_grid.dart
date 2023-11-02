import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';
import 'package:dinesh_portfolio/presentation/projects/project_card.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';

class ProjectsGrid extends StatelessWidget {
  final ProjectBloc? projectBloc;

  const ProjectsGrid({super.key, required this.projectBloc});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projectBloc!.state.projects!.length,
      itemBuilder: (context, index) => ProjectCard(
        entity: projectBloc!.state.projects![index],
      ),
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.projects.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }
}
