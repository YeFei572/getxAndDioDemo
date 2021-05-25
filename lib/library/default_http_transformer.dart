import 'package:demo01/library/http_exceptions.dart';
import 'package:dio/dio.dart';

import 'http_response.dart';

abstract class HttpTransformer {
  HttpResponse parse(Response response);
}

class DefaultHttpTransformer extends HttpTransformer {
  @override
  HttpResponse parse(Response response) {
    /// TODO 开始解析
    print("${response.toString()}, -----------------");
    if(response.statusCode == 200) {
      return HttpResponse.success(response.data);
    }
    throw new BadResponseException(response.data);
  }

  /// 单例对象
  static DefaultHttpTransformer _instance = DefaultHttpTransformer._internal();

  /// 内部构造方法，可避免外部暴露构造函数，进行实例化
  DefaultHttpTransformer._internal();

  /// 工厂构造方法，这里使用命名构造函数方式进行声明
  factory DefaultHttpTransformer.getInstance() => _instance;
}
