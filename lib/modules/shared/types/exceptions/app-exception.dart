import 'package:flutter_basic_app/modules/shared/shared.module.dart';

class AppException implements Exception {

  AppException({
    this.errorMessage,
    this.errorCategory = ErrorCategory.COMMON,
    this.errorLevel = ErrorLevel.ERROR,
    this.statusCode
  });

  final String errorMessage;
  final ErrorCategory errorCategory;
  final ErrorLevel errorLevel;
  final int statusCode;

  ErrorDO get error => ErrorDO(
    statusCode: statusCode,
    errorMessage: errorMessage,
    errorCategory: errorCategory,
    errorLevel: errorLevel
  );

  @override
  String toString() {
    return 'AppException{errorMessage: $errorMessage, errorCategory: $errorCategory, errorLevel: $errorLevel, statusCode: $statusCode}';
  }
}