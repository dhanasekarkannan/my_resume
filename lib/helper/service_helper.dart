import 'dart:convert';
import 'dart:io';

import 'package:dhana_resume/model/resumeException_model.dart';
import 'package:http/http.dart';

class ServiceHelper {
  Future<String> postServiceRequest(
      Uri url, Map<String, String> header, Map<String, dynamic> body) async {
    try {
      final Response response = await post(url, headers: header, body: body);
      return jsonEncode(response);
    } on HttpException {
      throw ResumeException(
          errorMessage: "Http Exception - Please check Network Connectivity");
    } on SocketException {
      throw ResumeException(
          errorMessage: "Socket Exception - Couldn't connect to the Server ");
    }
  }

  Future<String> getServiceRequest(Uri url,
      {Map<String, String>? headers}) async {
    try {
      final Response response = await get(url);
      return jsonEncode(response.body);
    } on HttpException {
      throw ResumeException(
          errorMessage: "Http Exception - Please check Network Connectivity");
    } on SocketException {
      throw ResumeException(
          errorMessage: "Socket Exception - Couldn't connect to the Server ");
    }
  }
}
