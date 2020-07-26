import 'package:flutter_basic_app/modules/shared/shared.module.dart';

class TechnicalException extends AppException {

  TechnicalException({
    errorMessage,
    errorCategory = ErrorCategory.TECHNICAL,
    errorLevel = ErrorLevel.ERROR,
    statusCode
  }) : super(
      errorMessage: errorMessage,
      errorCategory: errorCategory,
      errorLevel: errorLevel,
      statusCode: statusCode
  );
}