import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/core/config/styles/text_style.dart';
import 'package:dinesh_portfolio/presentation/about_me/about_me.dart';

import '../home/project_bloc/project_bloc.dart';
import '../widgetss/build_skill.dart';
import '../widgetss/loading_indicator.dart';
import '../widgetss/text_widget.dart';

class BuildManSkill extends StatelessWidget {
  const BuildManSkill({required this.bloc, super.key});
  final ProjectBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          label: 'About me ',
          style: getTextStyle(
              color: Colors.cyan, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextWidget(
                maxLines: 15,
                label: getAboutMeText(),
                style: getTextStyle(fontSize: 16, color: Colors.white),
              ),
              /*
              child: RichText(
                text: TextSpan(
                  style: getTextStyle(),
                  children: [
                    TextSpan(
                      text: 'About Me: ',
                      style: getTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.green),
                    ),
                    TextSpan(
                      text: getAboutMeText(),
                      style: getTextStyle(),
                    )
                  ],
                ),
              ),
*/
            ),
          ],
        ),
        BlocProvider<ProjectBloc>(
          create: (context) => bloc!..add(LoadSkillsEvent()),
          child: BlocConsumer<ProjectBloc, ProjectState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.isLoading!
                  ? const LoadingIndicator()
                  : state.hasError!
                      ? Center(
                          child: TextWidget(label: '${state.errorMsg}'),
                        )
                      : BuildSkillCard(
                          skillsList: state.skillEntity!.skill,
                        );
            },
          ),
        ),
      ],
    );
  }
}
