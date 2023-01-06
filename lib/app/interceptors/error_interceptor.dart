import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/print.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor();

  @override
  void onError(err, handler) async {
    Print.log(err.response, "SERVICE");
    if (err.response?.data is Map) {
      Fluttertoast.showToast(msg: err.response?.data["message"]);
    } else {
      Fluttertoast.showToast(msg: "Bir hata olustu");
    }
    handler.next(err);
  }
}
