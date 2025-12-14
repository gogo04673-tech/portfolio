import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/features/theme/domain/entities/theme_entity.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/use_cases/get_theme.dart';
import 'package:portfolio/features/theme/domain/use_cases/set_theme.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_event.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetThemeUseCase getTheme;
  final SetThemeUseCase setTheme;

  ThemeBloc({required this.getTheme, required this.setTheme})
    : super(ThemeState.initial()) {
    on<GetThemeEvent>(_onGetThemeEvent);
    on<ToggleThemeEvent>(_onToggleThemeEvent);
  }

  Future<void> _onGetThemeEvent(
    GetThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    emit(state.copyWith(status: ThemeStatus.loading));

    try {
      ThemeType result = await getTheme.call();
      ThemeEntity themeEntity;

      if (result == ThemeType.system) {
        final brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
        themeEntity = ThemeEntity(
          themeType: brightness == Brightness.dark
              ? ThemeType.dark
              : ThemeType.light,
        );
      } else {
        themeEntity = ThemeEntity(themeType: result);
      }

      emit(
        state.copyWith(status: ThemeStatus.success, themeEntity: themeEntity),
      );
    } catch (e) {
      emit(state.copyWith(status: ThemeStatus.error, errorMsg: e.toString()));
    }
  }

  ThemeType _getNextTheme(ThemeType current, ThemeType? requested) {
    if (requested != null) return requested;

    if (current == ThemeType.system) {
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.dark ? ThemeType.light : ThemeType.dark;
    }

    return current == ThemeType.dark ? ThemeType.light : ThemeType.dark;
  }

  Future<void> _onToggleThemeEvent(
    ToggleThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    if (state.themeEntity == null) return;

    final newType = _getNextTheme(
      state.themeEntity!.themeType,
      event.themeType,
    );
    final newThemeEntity = ThemeEntity(themeType: newType);

    try {
      await setTheme.call(params: newType);
      emit(
        state.copyWith(
          status: ThemeStatus.success,
          themeEntity: newThemeEntity,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ThemeStatus.error, errorMsg: e.toString()));
    }
  }
}
