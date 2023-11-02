import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/config/styles/text_style.dart';
import 'package:dinesh_portfolio/core/entities/project_entity.dart';

import '../widgetss/text_widget.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.entity, super.key});
  final ProjectEntity? entity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              label: 'Title : ${entity!.title}',
              style: getTextStyle(
                fontSize: 16,
              ),
            ),
            TextWidget(
              label: 'Description : ${entity!.description}',
              maxLines: 3,
            ),
            TextWidget(
              label: 'Technologies Used : ${entity!.techs}',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                TextWidget(
                  label: 'Duration : ${entity!.duration}',
                ),
                TextWidget(
                  label: 'Organization : ${entity!.company}',
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
