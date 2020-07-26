import 'package:flutter_basic_app/modules/shared/shared.module.dart';

class BusinessException extends AppException {
  BusinessException({
    errorMessage,
    errorCategory = ErrorCategory.BUSINESS,
    errorLevel = ErrorLevel.ERROR,
    statusCode
  }) : super(
      errorMessage: errorMessage,
      errorCategory: errorCategory,
      errorLevel: errorLevel,
      statusCode: statusCode
  );

}