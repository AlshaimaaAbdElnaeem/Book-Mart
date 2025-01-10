import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage:
                "Connection error occurred with the server. Please check your internet connection and try again");
      case DioExceptionType.badResponse:
        return ServerFailure(
            errorMessage: DioException.badResponse(
                    statusCode: dioException.response!.statusCode!,
                    requestOptions: dioException.requestOptions,
                    response: dioException.response!)
                .message.toString());
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: "Request to Api was canceld, please Try again");
      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage: "Connection error , please Try later");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure(
              errorMessage: "No internet connection , please try again!");
        }
        return ServerFailure(
            errorMessage: "Opps , there was an error , please try again!");
    }
  }
}
