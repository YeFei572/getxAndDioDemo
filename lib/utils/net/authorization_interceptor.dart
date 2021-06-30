import 'package:demo01/utils/get_store_util.dart';
import 'package:demo01/utils/net/dio_client.dart';
import 'package:demo01/utils/net/pretty_http.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  late bool beAuth;

  AuthorizationInterceptor({required this.beAuth});

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);

    /// 定时刷新token
    if (response.statusCode == 401) {
      Dio _dio = DioHttpClient.getInstance().getClient(
        response.requestOptions.baseUrl,
      );
      /// 锁住
      _dio.interceptors.requestLock.lock();
      _dio.interceptors.responseLock.lock();

      /// 获取新的token
      PrettyHttp.post(
        "/api/login?terminal=WEB",
        data: {"phone": "15896272531", "password": "111111"},
      ).then((value) {
        StoreUtils.store.write("user", value);
      }).whenComplete(() {
        _dio.interceptors.requestLock.unlock();
        _dio.interceptors.responseLock.unlock();
        _dio.request(
          response.requestOptions.path,
          data: response.requestOptions.data,
          queryParameters: response.requestOptions.queryParameters,
        ).then((value) {
          print(value);
          handler.next(Response(requestOptions: response.requestOptions, data: value));
        });
      });

    }
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);
    if (beAuth) {
      if (!StoreUtils.store.hasData("user")) {
        PrettyHttp.post(
          "/api/login?terminal=WEB",
          beAuth: false,
          data: {"phone": "15896272531", "password": "111111"},
        ).then((value) {
          StoreUtils.store.write("user", value);
          options.headers['Authorization'] = value['token'];
        });
      } else {
        options.headers['Authorization'] =
            "Bearer ${StoreUtils.store.read("user")['token']}";
      }
    }
  }
}
