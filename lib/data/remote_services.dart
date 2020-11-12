import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class RemoteServices{
  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'base url of api call',
      headers: {
        'Appversion': '1.0',
        'Ostype': Platform.isAndroid ? 'ANDRIOD' : 'ios'
      }));

  Future<dynamic> fetchData() async{

  }
  /*Future<MedicineProductResponse> getMedicineProduct(int pageNo, int limit) async {
    Map<String, Object> qParams = {
      'page_no': pageNo,
      'limit': limit
    };

    try {
      Response response = await _dioClient.get('getproduct', queryParameters: qParams);
      dynamic json = jsonDecode(response.toString());
      print(response.data);
      if (response.data != "") {
        print("dataValue :- ${json['success']}");
        if (json['success'] == true)
          return MedicineProductResponse.fromJson(json);
        else
          return MedicineProductResponse.fromError(
              json['message']
          );
      } else {
        return MedicineProductResponse.fromError("No data"*//*, 396*//*);
      }
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      var e = error;
      if (error is DioError) {
        e = getErrorMsg(e.type);
      }
      return MedicineProductResponse.fromError("$e"*//*, 397*//*);
    }
  }*/

  String getErrorMsg(DioErrorType type) {
    switch (type) {
      case DioErrorType.CONNECT_TIMEOUT:
        return "Connection timeout";
        break;
      case DioErrorType.SEND_TIMEOUT:
        return "Send timeout";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        return "Receive timeout";
        break;
      case DioErrorType.RESPONSE:
        return "Response timeout";
        break;
      case DioErrorType.CANCEL:
        return "Request has been cancelled";
        break;
      case DioErrorType.DEFAULT:
        return "Connection problem";
        break;
      default:
        return "Something went wrong";
        break;
    }
  }
}