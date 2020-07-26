import 'data-object.dart';
import 'error-category.enum.dart';
import 'error-level.enum.dart';

class ErrorDO extends DataObject {

  ErrorDO({
    this.statusCode = -1,
    this.errorMessage = 'An error occured.',
    this.errorCategory = ErrorCategory.COMMON,
    this.errorLevel = ErrorLevel.ERROR
  });

  final int statusCode;
  final String errorMessage;
  final ErrorCategory errorCategory;
  final ErrorLevel errorLevel;

  bool get isError => errorLevel == ErrorLevel.ERROR;
  bool get isWarning => errorLevel == ErrorLevel.WARN;
  bool get isInfo => errorLevel == ErrorLevel.INFO;

  bool get isBusinessError => errorCategory == ErrorCategory.BUSINESS;
  bool get isTechnicalError => errorCategory == ErrorCategory.TECHNICAL;
  bool get isCommonError => errorCategory == ErrorCategory.COMMON;
}