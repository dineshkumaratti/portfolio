import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:dinesh_portfolio/core/config/themes/app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState.init()) {
    on<AppThemeSwitchEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            isDark: event.isDark,
            theme: event.isDark ? AppThemes.darkTheme : AppThemes.lightTheme,
          ),
        );
      },
    );
  }
}
