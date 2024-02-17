import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: '',
      receiveDataWhenStatusError: true,
      validateStatus: (status) => true,
    ));
  }

  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    return await dio?.get(url, queryParameters: query);
  }

  static Future<Response?> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    return await dio?.delete(url, queryParameters: query);
  }

  static Future<Response?> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    Response? response =
        await dio?.post(url, queryParameters: query, data: data);
    return response;
  }

  static Future<Response?> postImage({
    required String url,
    // Map<String,dynamic>? query,
    required FormData data,
  }) async {
    Response? response = await dio?.post(url, data: data);
    return response;
  }

  static Future<Response?> putAdditionalPassenger({
    required String url,
    Map<String, dynamic>? query,
    required String data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    Response? response =
        await dio?.post(url, queryParameters: query, data: data);
    return response;
  }

  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    Response? response =
        await dio?.put(url, queryParameters: query, data: data);
    return response;
  }
}

class DioHelperOCR {
  static Dio? dio;

  static initOCR() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://ocr.elastic.travel/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    return await dio?.get(url, queryParameters: query);
  }

  static Future<Response?> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
  }) async {
    Response? response =
        await dio?.post(url, queryParameters: query, data: data);
    return response;
  }

  static Future<Response?> postImage({
    required String url,
    // Map<String,dynamic>? query,
    required FormData data,
  }) async {
    Response? response = await dio?.post(url, data: data);
    return response;
  }

  static Future<Response?> putAdditionalPassenger({
    required String url,
    Map<String, dynamic>? query,
    required String data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    Response? response =
        await dio?.post(url, queryParameters: query, data: data);
    return response;
  }

  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'accept': '*/*',
      'Authorization': 'Bearer $token'
    };
    Response? response =
        await dio?.put(url, queryParameters: query, data: data);
    return response;
  }
}
