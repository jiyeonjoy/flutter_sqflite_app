import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_jab_app/data/dto/response/common/error_res_dto.dart';

abstract class ErrorCode {

}

ErrorResDto transformToErrorResDtoWithErrorHandle(error) {
  ErrorResDto transformed = transformToErrorResDto(error);

  return transformed;
}

ErrorResDto transformToErrorResDto(error) {
  ErrorResDto result = ErrorResDto();
  if (error is Exception) {
    String errorMessage;
    try {
      if (error is DioError) {
        var extraErrorData =
        (error.response?.data as Map<String, dynamic>)['data'];
        result = result.copyWith(
          status: error.response?.statusCode ?? -1,
          errorMessage: error.type.toString(),
          errorDetail: error.message,
          data: extraErrorData,
        );
        errorMessage = error.type.toString();
        switch (error.type) {
          case DioErrorType.cancel:
            errorMessage = 'Request Cancelled';
            break;
          case DioErrorType.connectTimeout:
            errorMessage = 'Connection request timeout';
            break;
          case DioErrorType.sendTimeout:
          case DioErrorType.receiveTimeout:
            errorMessage = 'timeout in connection with API server';
            break;
          case DioErrorType.response:
            switch (error.response?.statusCode) {
              case 200:
              case 400:
              case 401:
              case 403:
              case 422:
                errorMessage = 'Unauthorised request';
                break;
              case 404:
                errorMessage = 'Not found';
                break;
              case 409:
                errorMessage = 'Error due to a conflict';
                break;
              case 408:
                errorMessage = 'Connection request timeout';
                break;
              case 500:
                errorMessage = "Internal Server Error";
                break;
              case 503:
                errorMessage = "Service unavailable";
                break;
              default:
                var responseCode = error.response?.statusCode;
                errorMessage = "Received invalid status code: $responseCode";
            }
            break;
          case DioErrorType.other:
          // handled by default result copy with operation
            break;
        }
      } else if (error is SocketException) {
        errorMessage = 'No internet connection';
      } else {
        errorMessage = 'Unexpected error occurred';
      }

      return result.copyWith(errorMessage: errorMessage);
    } on FormatException catch (_) {
      return result.copyWith(errorMessage: 'Unexpected format error occurred');
    } catch (_) {
      return result.copyWith(errorMessage: 'Unexpected error occurred');
    }
  } else {
    if (error.toString().contains("is not a subtype of")) {
      return result.copyWith(errorMessage: 'Unable to process the data');
    } else {
      return result.copyWith(errorMessage: 'Unexpected error occurred');
    }
  }
}
