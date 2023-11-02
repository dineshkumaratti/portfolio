// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final bool? isDark;
  final ThemeData? theme;
  const ThemeState({this.isDark, this.theme});
  @override
  List get props => [
        isDark,
        theme,
      ];
  const ThemeState.init()
      : theme = null,
        isDark = true;
  ThemeState copyWith({
    bool? isDark,
    ThemeData? theme,
  }) {
    return ThemeState(
      isDark: isDark ?? this.isDark,
      theme: theme ?? this.theme,
    );
  }
}
