import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/localization/domain/use_cases/get_saved_local.dart';
import 'package:portfolio/features/localization/domain/use_cases/set_saved_local.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_event.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final GetSavedLocalUseCase getLocal;
  final SetSavedLocalUseCase setLocal;
  LanguageBloc({required this.getLocal, required this.setLocal})
    : super(LanguageState.initial()) {
    on<LoadSavedLanguage>((event, emit) async {
      try {
        final savedLang = await getLocal.call();
        final fallbackLang = PlatformDispatcher.instance.locale.languageCode;

        final langCode = savedLang?.isNotEmpty == true
            ? savedLang!
            : fallbackLang;

        emit(LanguageState(locale: Locale(langCode)));
      } catch (e) {
        emit(
          LanguageState(
            locale: Locale(PlatformDispatcher.instance.locale.languageCode),
          ),
        );
      }
    });

    on<ChangeLanguage>((event, emit) async {
      final langCode =
          event.langCode ?? PlatformDispatcher.instance.locale.languageCode;

      try {
        await setLocal.call(params: langCode);

        emit(LanguageState(locale: Locale(langCode)));
      } catch (_) {
        emit(LanguageState(locale: Locale(langCode)));
      }
    });
  }
}
