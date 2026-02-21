class ApiConstant {
  static const String apiBaseUrl = 'https://vcare.integration25.com/api/';
  static const String logIn = 'auth/login';
  static const String signUp = 'auth/register';
}

class ApiErrors {
  static const String badRequestError = 'Bad Request Error';
  static const String unauthorizedError = 'Unauthorized Error';
  static const String forbiddenError = 'Forbidden Error';
  static const String notFoundError = 'Not Found Error';
  static const String internalServerError = 'Internal Server Error';
  static const String unknownError = 'Unknown Error';
  static const String timeoutError = 'Request Timeout Error';
  static const String noInternetError = 'No Internet Connection';
  static const String defaultError = 'An error occurred. Please try again.';
  static const String parsingError = 'Error parsing response data';
  static const String noContent = 'No content available';
  static const String validationError = 'Validation Error';
  static const String ok = 'OK';
  static const String retryAgainMessage =
      'Please check your connection and try again.';
  static const String somethingWentWrong =
      'Something went wrong. Please try again.';
  static const String loadingMessage = 'Loading Message';

  static const String cacheError = 'Cache Error';
  // static const String timeoutError = 'Timeout Error in Cache';
}
