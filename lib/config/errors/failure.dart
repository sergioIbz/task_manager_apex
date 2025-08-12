class Failure {
  final String message;
  final int? code;
  final dynamic details;

  const Failure( {
    required this.message,
    this.code,
    this.details,
  });

  @override
  String toString() {
    return '''
Failure {
  message: $message,
  code: $code,
  details: $details
}''';
  }
}
