/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/core/config/assets/assets.dart';
import 'package:dinesh_portfolio/core/config/styles/text_style.dart';
import 'package:dinesh_portfolio/core/di/locator.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';
import 'package:dinesh_portfolio/presentation/widgets/build_skill.dart';
import 'package:dinesh_portfolio/presentation/widgets/loading_indicator.dart';
import 'package:dinesh_portfolio/presentation/widgets/text_widget.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  ProjectBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc = getIt<ProjectBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width < 500 ? 0 : 30,
            ),
            child: SizedBox(
              // width: MediaQuery.of(context).size.width < 500 ? 180 : 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // maxLines: 3,
                    overflow: TextOverflow.visible,
                    label: 'Hello 👋 there, Welcome to my site 🕸🕸',
                    style: getTextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextWidget(
                    label: 'Diddi Manoj 😎 \nFlutter Developer.',
                    style: getTextStyle(
                      fontSize: 25,
                    ),
                    overflow: TextOverflow.fade,
                    // breakSpaces: true,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(
                        label: 'About me: ',
                        style: getTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextWidget(
                        label: getAboutMeText(),
                        style: getTextStyle(
                          fontSize: 12,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  BlocProvider<ProjectBloc>(
                    create: (context) => bloc!..add(LoadSkillsEvent()),
                    child: BlocConsumer<ProjectBloc, ProjectState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return state.isLoading! || state.skillEntity == null
                            ? const LoadingIndicator()
                            : state.hasError!
                                ? Center(
                                    child:
                                        TextWidget(label: '${state.errorMsg}'),
                                  )
                                : BuildSkillCard(
                                    skillsList: state.skillEntity?.skill,
                                  );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // const Spacer(),
        SizedBox.square(
          dimension: MediaQuery.of(context).size.width < 500
              ? 180
              : 250, //MediaQuery.of(context).size.width * .25,
          child: const CircleAvatar(
            foregroundImage: AssetImage(
              Assets.profile,
            ),
          ),
        ),
        // const Spacer(),
      ],
    );
  }
}

String getAboutMeText() {
  return """  I'm Diddi Manoj. I am a Flutter developer with 3 years of experience. I am passionate about building beautiful and high-performing mobile, web, and desktop applications using Flutter.
I have a strong understanding of the Flutter framework and the Dart programming language. I am also proficient in using various Flutter libraries and packages to build complex and feature-rich applications.
I have experience working on a variety of Flutter projects.
""";
}

*/

// responsive layoutbuilder tried

import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/di/locator.dart';
import 'package:dinesh_portfolio/presentation/about_me/build_image.dart';
import 'package:dinesh_portfolio/presentation/about_me/build_skill.dart';
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  ProjectBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc = getIt<ProjectBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutBuilder(builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 600;

          return ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  direction: isSmallScreen ? Axis.vertical : Axis.horizontal,
                  children: const [
                    // Align(
                    //   child: buildImageBasedOnSize(
                    //     buildImage: isSmallScreen,
                    //   ),
                    //),
                    // BuildManInfo(
                    //   bloc: bloc,
                    // ),
                    // buildImageBasedOnSize(
                    //   buildImage: !isSmallScreen,
                    // ),
                  ],
                ),
              ),
              BuildManSkill(
                bloc: bloc,
              ),
            ],
          );
        }
/*
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BuildManInfo(
                      bloc: bloc,
                    ),
                    const BuildManImage(),
                  ],
                ),
                BuildManSkill(bloc: bloc),
              ],
            );
         */

            ),
      ],
    );
  }
}

Widget buildImageBasedOnSize({required bool buildImage}) {
  return Visibility(
    visible: buildImage,
    child: const Padding(
      padding: EdgeInsets.all(10.0),
      child: BuildManImage(),
    ),
  );
}

String getAboutMeText() {
  return 'Myself Dinesh Kumar Atti. I am a Flutter developer with 3+ years of experience. I am passionate about building beautiful and high-performing mobile, web, and desktop applications using Flutter. I have a strong understanding of the Flutter framework and the Dart programming language. I am also proficient in using various Flutter libraries and packages to build complex and feature-rich applications. I have experience working on a variety of Flutter projects.';
}
// */