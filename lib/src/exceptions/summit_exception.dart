import 'exception_code.dart';

class SummitException implements Exception {
  SummitException({
    required this.code,
    this.message,
    this.stackTrace,
  });

  final String? message;

  final ExceptionCode code;

  final StackTrace? stackTrace;

  @override
  String toString() {
    String output = '[$code] $message';

    if (stackTrace != null) {
      output += '\n\n$stackTrace';
    }

    return output;
  }
}
