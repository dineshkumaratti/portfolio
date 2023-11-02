part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AppThemeSwitchEvent extends ThemeEvent {
  final bool isDark;
  AppThemeSwitchEvent({required this.isDark});
}
