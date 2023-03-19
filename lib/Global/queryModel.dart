import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'globalUrl.dart';

getDate({
  var method,
  var url,
  required Map<dynamic, dynamic> body,
  Map<String, String>? headers,
  returnStatusCode = false,
  errorLogin = false,
  noInternet = false,
}) async {
  var requestUri = Uri.parse(baseUrl + url);
  var requestBody = jsonEncode(body);
  var requestHeader = AllrequestHeader;

  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.wifi ||
      connectivityResult == ConnectivityResult.mobile) {
    print('coronation ${method.toString()}');
    print('coronation2 ${method.toString()=='HttpMethod.put'}');
    if (method.toString() == 'HttpMethod.post') {
      var result = await http.post(requestUri,
          body: requestBody,
          headers: headers ?? requestHeader
      );
      print('requestUri $requestUri');
      print('requestBody $requestBody');
      print('result ${result.body}');
      if (result.statusCode == 200) {
        var data = jsonDecode(result.body);
        return await data;
      } else if (result.statusCode == 401) {
        var data = jsonDecode(result.body);
        if (returnStatusCode) {
          return result.statusCode;
        } else if (errorLogin) {
          print(data['enDescription']);
          //dialog(title: "Error", body: data['enDescription'], isFindLoading: true);
        } else {
          print(data['enDescription']);
          //dialog(title: "Error", body: data['EnDescription']);
        }
      } else if (result.statusCode == 400) {
        var data = jsonDecode(result.body);
        if (returnStatusCode) {
          return await data;
        } else if (errorLogin) {
          return await data;

          // dialog(title: "Error", body: data['enDescription'], isFindLoading: true);
        } else {
          print(data['enDescription']);
          return await data;
          //dialog(title: "Error", body: data['EnDescription']);
        }
      } else if (result.statusCode == 201) {
        return result.statusCode;
      }
    }
    if (method.toString() == 'HttpMethod.put') {
      var result = await http.put(requestUri,
          body: requestBody,
        //  headers: headers ?? requestHeader
      );
      print('requestUriPut $requestUri');
      print('requestBodyPut $requestBody');
      print('resultPut statusCode ${result.statusCode}');
      print('resultPut ${result.body}');
      if (result.statusCode == 200) {
        var data = jsonDecode(result.body);
        return await data;
      } else if (result.statusCode == 401) {
        var data = jsonDecode(result.body);
        if (returnStatusCode) {
          return result.statusCode;
        } else if (errorLogin) {
          print(data['enDescription']);
          //dialog(title: "Error", body: data['enDescription'], isFindLoading: true);
        } else {
          print(data['enDescription']);
          //dialog(title: "Error", body: data['EnDescription']);
        }
      } else if (result.statusCode == 400) {
        var data = jsonDecode(result.body);
        if (returnStatusCode) {
          return await data;
        } else if (errorLogin) {
          return await data;

          // dialog(title: "Error", body: data['enDescription'], isFindLoading: true);
        } else {
          print(data['enDescription']);
          return await data;
          //dialog(title: "Error", body: data['EnDescription']);
        }
      } else if (result.statusCode == 201) {
        return result.statusCode;
      }
    }
    } else {
      /*dialog(
          title: 'NO INTERNET',
          body: 'Check your Internet Connection and try again');*/
      noInternet = true;
    }
}
