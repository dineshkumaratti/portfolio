import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';

import '../../../../core/di/locator.dart';
import '../../../projects/upload_project.dart';
import 'projects_grid.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  ProjectBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc = getIt<ProjectBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectBloc>(
      create: (context) => bloc!
        ..add(
          LoadProjectsEvent(),
        ),
      child: BlocConsumer<ProjectBloc, ProjectState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadProject(),
                        ),
                      );
                    },
                    child: const Text('Add projects')),
                const ProjectsIntro(),
                const SizedBox(height: 52),
                ProjectsGrid(projectBloc: bloc!),
              ],
            ),
          );
        },
      ),
    );
  }
}
