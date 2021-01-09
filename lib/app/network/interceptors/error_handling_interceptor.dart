import 'package:dio/dio.dart';

class ErrorHandlingInterceptor extends InterceptorsWrapper {
  @override
  Future onResponse(Response response) {
    if (response.data != null && response.data["success"]) {
      return super.onResponse(response);
    }

    String message;
    try {
      message = response.data["error"]["info"];
    } catch (e) {
      message = e.message;
    }
    throw DioError(
      error: message,
      request: response.request,
      response: response,
      type: DioErrorType.RESPONSE,
    );
  }

  @override
  Future onError(DioError err) {
    err = _formatError(err);

    return Future.value(err);
  }

  DioError _formatError(DioError e) {
    dynamic message;

    if (e.type == DioErrorType.CANCEL) {
      message = "Request canceled";
    } else if (e.type == DioErrorType.SEND_TIMEOUT ||
        e.type == DioErrorType.RECEIVE_TIMEOUT ||
        e.type == DioErrorType.CONNECT_TIMEOUT) {
      message =
          "The request timed out, check your network connection and try again";
    } else if (e.type == DioErrorType.RESPONSE) {
      message = (e.error as String);
    } else {
      message =
          "Unable to connect to the server, check your network connection and try again";
    }

    return DioError(
      error: message,
      request: e.request,
      response: e.response,
      type: e.type,
    );
  }
}
