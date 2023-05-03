class ApiException implements Exception {
  final int? statusCode;
  final String message;

  ApiException({this.statusCode = 504, required this.message});

  @override
  String toString() {
    return "ApiException - Status code: $statusCode, Message: $message";
  }
}
