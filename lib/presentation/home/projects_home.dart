import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/core/di/locator.dart';
import 'package:dinesh_portfolio/presentation/about_me/about_me.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';

import '../projects/build_project_card.dart';
import '../widgetss/build_scaffold.dart';
import '../widgetss/loading_indicator.dart';

class ProjectsHome extends StatefulWidget {
  const ProjectsHome({super.key});

  @override
  State<ProjectsHome> createState() => _ProjectsHomeState();
}

class _ProjectsHomeState extends State<ProjectsHome> {
  ProjectBloc? projectBloc;
  @override
  void initState() {
    super.initState();
    projectBloc = getIt<ProjectBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BuildScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            const AboutMe(),
            BlocProvider<ProjectBloc>(
              create: (context) => projectBloc!
                ..add(
                  LoadProjectsEvent(),
                ),
              child: BlocBuilder<ProjectBloc, ProjectState>(
                builder: (context, state) {
                  return state.isLoading!
                      ? const Center(
                          child: LoadingIndicator(),
                        )
                      : state.hasError!
                          ? Text(
                              state.errorMsg!,
                            )
                          : BuildProjectsList(
                              state: state,
                              projectBloc: projectBloc,
                            );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
