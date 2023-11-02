import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';
import 'package:dinesh_portfolio/presentation/projects/project_card.dart';

import '../../constants/globals.dart';
import '../widgetss/build_dropdown.dart';
import '../widgetss/build_footer.dart';
import '../widgetss/text_widget.dart';

class BuildProjectsList extends StatefulWidget {
  final ProjectState? state;
  final ProjectBloc? projectBloc;
  const BuildProjectsList({this.state, super.key, required this.projectBloc});

  @override
  State<BuildProjectsList> createState() => _BuildProjectsListState();
}

class _BuildProjectsListState extends State<BuildProjectsList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              const TextWidget(label: 'Select Organization: '),
              BuildDropDownMenu(
                menuItems: Globals.category,
                selectedItem: widget.state!.selectedCategory!.toUpperCase(),
                onChanged: (value) {
                  widget.projectBloc!.add(
                    UpdateCategoryEvent(
                      category: value!.toUpperCase(),
                    ),
                  );
                  widget.projectBloc!.add(
                    LoadProjectsEvent(
                      category: value.toLowerCase(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.state!.projects!.length,
          itemBuilder: (context, index) => ProjectCard(
            entity: widget.state!.projects![index],
          ),
        ),
        // const SizedBox(
        //   height: 200,
        // ),
        const BuildFooter()
      ],
    );
  }
}
