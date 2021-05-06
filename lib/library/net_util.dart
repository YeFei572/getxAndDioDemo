import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

/*Future setToken(Dio dio) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  dio.options.headers = {
    'Content-type': 'content',
    'Authorization': 'Bearer ' + sp.getString('token'),
  };
  return dio;
}*/

// 携带token的请求
Future request4GetWithToken(String urlPath, {queryParameters}) async {
  try {
    Dio dio = new Dio();
    // SharedPreferences sp = await SharedPreferences.getInstance();
    dio.options.headers = {
      'Content-type': 'content',
      // 'Authorization': 'Bearer ' + sp.getString('token'),
    };
    print('请求开始: ==============> $urlPath}');
    Response response;
    if (queryParameters == null) {
      response = await dio.get(urlPath).timeout(Duration(seconds: 10));
    } else {
      response = await dio
          .get(urlPath, queryParameters: queryParameters)
          .timeout(Duration(seconds: 10));
    }
    if (response.statusCode == 200) {
      // print('请求结果: ===============> ${response.data}');
      return response.data;
    } else {
      throw Exception('接口错误');
    }
  } catch (e) {
    Get.snackbar("notice", "接口超时，请刷新！");
    print('Error========$urlPath===$queryParameters====>$e');
  }
}

Future request4PostWithToken(String urlPath,
    {method, queryParameters}) async {
  try {
    Dio dio = new Dio();
    // SharedPreferences sp = await SharedPreferences.getInstance();
    dio.options.headers = {
      'Content-type': 'content',
      // 'Authorization': 'Bearer ' + sp.getString('token'),
      // 'User-Agent':'okhttp/3.12.0',
      // 'version':'1.3.4'
    };
    print('请求开始: ==============> $urlPath}');
    Response response;
    if (method != null && method == 'DELETE') {
      if (queryParameters == null) {
        response = await dio.delete(urlPath).timeout(Duration(seconds: 10));
      } else {
        response = await dio
            .delete(urlPath, data: queryParameters)
            .timeout(Duration(seconds: 10));
      }
    } else if (method != null && method == 'PUT') {
      if (queryParameters == null) {
        response = await dio.put(urlPath).timeout(Duration(seconds: 10));
      } else {
        response = await dio
            .put(urlPath, data: queryParameters)
            .timeout(Duration(seconds: 10));
      }
    } else {
      if (queryParameters == null) {
        response = await dio.post(urlPath).timeout(Duration(seconds: 10));
      } else {
        response = await dio
            .post(urlPath, data: queryParameters)
            .timeout(Duration(seconds: 10));
      }
    }

    if (response.statusCode == 200) {
      // print('请求结果: ===============> ${response.data}');
      return response.data;
    } else {
      throw Exception('接口错误');
    }
  } catch (e) {
    // String msg = e.response.data['message'];
    Get.snackbar('网络错误', e.toString());
    print('网络错误: $e');
    return null;
  }
}
