import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(Light()) {
    on<ThemeModeChanged>((event, emit) {
      if (event.isDark) {
        emit(const Light());
      } else {
        emit(const Dark());
      }
    });
  }
}
