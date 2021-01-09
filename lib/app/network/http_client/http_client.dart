import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:exchange_currency/app/network/interceptors/error_handling_interceptor.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'http_client.g.dart';

@Injectable()
class HttpClient extends DioForNative {
  HttpClient() {
    options = BaseOptions(
      baseUrl: "http://apilayer.net/api",
      connectTimeout: 10 * 1000,
      receiveTimeout: 10 * 1000,
    );

    options.headers["content-type"] = "application/json";

    interceptors.add(ErrorHandlingInterceptor());
  }
}
