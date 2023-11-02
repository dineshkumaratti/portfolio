import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/constants/globals.dart';
import 'package:dinesh_portfolio/core/di/locator.dart';
import 'package:dinesh_portfolio/core/entities/project_entity.dart';
import 'package:dinesh_portfolio/core/models/project_model.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';

import '../widgetss/build_dropdown.dart';
import '../widgetss/build_scaffold.dart';
import '../widgetss/input_text.dart';
import '../widgetss/loading_indicator.dart';
import '../widgetss/primary_button.dart';
import '../widgetss/text_widget.dart';

class UploadProject extends StatefulWidget {
  final ProjectEntity? entity;
  const UploadProject({this.entity, super.key});

  @override
  State<UploadProject> createState() => _UploadProjectState();
}

class _UploadProjectState extends State<UploadProject> {
  TextEditingController? title;
  TextEditingController? desc;
  TextEditingController? client;
  TextEditingController? duration;
  TextEditingController? techs;
  ProjectBloc? bloc;
  String? selectedItem;
  @override
  void initState() {
    super.initState();
    selectedItem = Globals.category.first;
    bloc = getIt<ProjectBloc>();
    title = TextEditingController();
    client = TextEditingController();
    duration = TextEditingController();
    desc = TextEditingController();
    techs = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BuildScaffold(
      body: BlocProvider<ProjectBloc>(
        create: (context) => bloc!..add(EmptyProjectsEvent()),
        child: BlocBuilder<ProjectBloc, ProjectState>(
          builder: (context, state) {
            return state.isLoading!
                ? const Center(
                    child: LoadingIndicator(),
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ListView(
                        children: [
                          Row(
                            children: [
                              const TextWidget(label: 'Select org:'),
                              const SizedBox(
                                width: 20,
                              ),
                              BuildDropDownMenu(
                                menuItems: Globals.category,
                                selectedItem: selectedItem,
                                onChanged: (value) async {
                                  //
                                  selectedItem = value;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          InputText(
                            hintText: 'Enter project title',
                            controller: title,
                          ),
                          InputText(
                            hintText: 'Enter project desc',
                            controller: desc,
                          ),
                          InputText(
                            hintText: 'Enter project duration',
                            controller: duration,
                          ),
                          InputText(
                            hintText: 'Enter project client',
                            controller: client,
                          ),
                          InputText(
                            hintText: 'Enter skills used ',
                            onSubmit: (value) {
                              // techs!.add(value);
                              // techs = techs!.toSet().toList();
                            },
                          ),
                          const SizedBox.square(
                            dimension: 20,
                          ),
                          Center(
                            child: PrimaryButton(
                              width: 100,
                              onPressed: () async {
                                //to do
                                // BlocProvider.of<ProjectBloc>(context).
                                bloc!.add(
                                  UploadProjectEvent(
                                    projectModel: ProjectModel(
                                      client: client!.text,
                                      description: desc!.text,
                                      duration: duration!.text,
                                      techs: techs!.text,
                                      title: title!.text,
                                      company: selectedItem,
                                    ),
                                  ),
                                );
                              },
                              label: state.hasError! ? 'retry ' : 'Submit',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
            //
          },
        ),
      ),
    );
  }
}
