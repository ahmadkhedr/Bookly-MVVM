import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({
    required this.errMessage,
  });
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioErro(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection Timeout With Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send Timeout With Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive Timeout With Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMessage: "BadCertificate Timeout With Api Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Api Request was Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(
            errMessage:
                "Thre is a connection Error,Please check Your internet Connection and try again");
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: "Opps There was an Error,Please try again");
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic erroBody) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: erroBody['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "Your Request not found,Please try again later");
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: "Interal Server Error,Please Try again Later");
    } else {
      return ServerFailure(
          errMessage: "Opps There was an Error,Please try again");
    }
  }
}
