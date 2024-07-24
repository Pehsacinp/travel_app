// ignore_for_file: must_be_immutable

/// It takes a DioError object and returns a custom error message
class NetworkExceptions implements Exception {
  late String message;
  NetworkExceptions({required this.message});
}
