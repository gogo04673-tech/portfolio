import 'package:portfolio/features/theme/domain/entities/theme_entity.dart';

enum ThemeStatus { initial, loading, success, error }

class ThemeState {
  final ThemeStatus status;
  final ThemeEntity? themeEntity;
  final String? errorMsg;

  ThemeState({required this.status, this.themeEntity, this.errorMsg});

  factory ThemeState.initial() => ThemeState(status: ThemeStatus.initial);

  ThemeState copyWith({
    ThemeStatus? status,
    ThemeEntity? themeEntity,
    String? errorMsg,
  }) {
    return ThemeState(
      status: status ?? this.status,
      themeEntity: themeEntity ?? this.themeEntity,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}
