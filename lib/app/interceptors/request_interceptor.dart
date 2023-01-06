import 'package:dio/dio.dart';

import '../../services/storage_service.dart';

class RequestInterceptor extends Interceptor {
  RequestInterceptor();

  @override
  void onRequest(options, handler) async {
    StorageService storageService = StorageService();
    final String? token = storageService.getToken();

    options.headers = {
      'Authorization': '$token',
      'Content-type': 'Application/json'
    };
    handler.next(options);
  }
}
