import 'package:dinesh_portfolio/presentation/home/themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/di/locator.dart';
import '../blocs/home_bloc/home_bloc.dart';
import '../views/home_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ThemeBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc = getIt<ThemeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => bloc!
        ..add(
          AppThemeSwitchEvent(
            isDark: true,
          ),
        ),
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            // color: AppColors.primaryColor,
            theme: state.theme,
            debugShowCheckedModeBanner: false,
            home: BlocProvider<HomeBloc>(
              create: (context) => HomeBloc(),
              child: const HomeView(),
            ),
          );
        },
      ),
    );
  }
}
