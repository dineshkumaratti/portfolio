import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dinesh_portfolio/core/config/app_colors.dart/app_colors.dart';
import 'package:dinesh_portfolio/presentation/widgetss/primary_button.dart';

import '../home/themes/theme_bloc.dart';
import '../projects/upload_project.dart';

class BuildScaffold extends StatelessWidget {
  const BuildScaffold({required this.body, super.key});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              body,
              Align(
                alignment: Alignment.topRight,
                child: PrimaryButton(
                  bgColor: AppColors.transparent,
                  width: 40,
                  height: 40,
                  onPressed: () {
                    var bloc = BlocProvider.of<ThemeBloc>(context);
                    bloc.add(
                      AppThemeSwitchEvent(
                        isDark: !bloc.state.isDark!,
                      ),
                    );
                  },
                  label: 'Change Theme',
                  child: BlocBuilder<ThemeBloc, ThemeState>(
                    bloc: BlocProvider.of<ThemeBloc>(context),
                    builder: (context, state) {
                      return Icon(
                        state.isDark! ? Icons.light_mode : Icons.dark_mode,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        child: !kDebugMode
            ? const SizedBox.shrink()
            : PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadProject(),
                    ),
                  );
                },
                label: 'Upload Project,',
              ),
      ),
    );
  }
}
