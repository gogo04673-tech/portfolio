class AppError extends Error {
  final String errorMsg;
  final String statusText;
  final Object? data;

  AppError({required this.errorMsg, required this.statusText, this.data});
}
