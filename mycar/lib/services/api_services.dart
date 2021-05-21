import 'dart:io';

import 'package:mycar/settings.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static ApiServices _singleton = new ApiServices._internal();

  factory ApiServices() {
    return _singleton;
  }

  ApiServices._internal();

  Map<String, String> headers = {
    "content-type": "application/x-www-form-urlencoded; charset=utf-8"
  };

  final Settings config = Settings();

  Future<String> get(String endPoint, bool withSecret) async {
    final http.Response response = await http.get(
        withSecret ? _getUriWithSecret(endPoint) : _getURI(endPoint),
        headers: headers);
    if(response.statusCode != HttpStatus.ok){
      print(response.body+' = '+response.statusCode.toString()+' = '+response.request.url.toString());
      throw('Get Data Failed');
    }
    return response.body;
  }

  Future<String> post(String endPoint, Map data) async {
    final http.Response response = await http.post(
      _getURI(endPoint),
      headers: headers,
      body: data,
    );
    if(response.statusCode != HttpStatus.ok){
      print(response.body+' = '+response.statusCode.toString());
      throw('Post Data Failed');
    }
    return response.body;
  }

  Uri _getURI(String endPoint) {
    return Uri.parse(config.mainUrl + endPoint);
  }

  Uri _getUriWithSecret(String endPoint) {
    return Uri.parse(config.mainUrl +
        endPoint +
        '?consumer_key=' +
        config.consumerKey +
        '&consumer_secret=' +
        config.consumerSecret);
  }
}
