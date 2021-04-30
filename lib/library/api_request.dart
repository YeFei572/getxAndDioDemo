import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiRequest {
  final String url;
  final Map data;

  ApiRequest({@required this.url, this.data});

  Dio _dio() {
    return Dio(BaseOptions(headers: {'Authorization': ""}));
  }

  void get(
      {Function() beforeSend,
      Function(dynamic data) onSuccess,
      Function(dynamic error) onError}) {
    print("请求地址：==========>${this.url}");
    _dio()
        .get(this.url, queryParameters: this.data)
        .then((value) => {
              // print("请求结果：==========>$value}"),
              if (onSuccess != null) {onSuccess(value.data)}
            })
        .catchError((error) => {
              if (onError != null) {onError(error)}
            });
  }

  void post({
    Function() beforeSend,
    Function(dynamic data) onSuccess,
    Function(dynamic error) onError,
  }) {
    print("请求地址：==========>${this.url}");
    _dio()
        .post(this.url, data: this.data)
        .then((value) => {
              // print("请求结果：==========>$value}"),
              if (onSuccess != null) {onSuccess(value.data)}
            })
        .catchError((error) => {
              if (onError != null) {onError(error)}
            });
  }
}
