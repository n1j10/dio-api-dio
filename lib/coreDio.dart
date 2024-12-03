import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Crud {
  String baseUrl = 'https://dummyjson.com/';
  final Dio dio = Dio(); /// Create an instance of Dio

  postRequest({required String url, required Map data, String? token}) async {
    final response = await dio.post(baseUrl + url,
        data: {
      'username': 'emilys',
      'password': 'emilyspass',
      'expiresInMins': '30',
    }); /// Change here ///      body == data  in dio package

    if (response.statusCode == 201 || response.statusCode == 200) {
      var result = response.data; // Change here
      print(result); // You can use response.data directly in print()
    } else {
      print("wrong server");
    }
  }

  getRequest({required String url, String? token}) async {
    final response = await dio.get(baseUrl + url); /// Change here
    if (response.statusCode == 200) {
      var result = response.data; /// Change here ///       body == data  in dio package
      print(result);
    } else {
      print("wrong server");
    }
  }

  putRequest({required String url, required Map body, String? token}) async {
    final response = await dio.put(baseUrl + url,
        data: {
      'title': 'I think I should shift to the moon',
    }); // Change here

    if (response.statusCode == 200) {
      var result = response.data; /// Change here ///
      print(result);
    } else {
      print("wrong server");
    }
  }

  deleteRequest({required String url, String? token}) async {
    final response = await dio.delete(baseUrl + url); /// Change here
    if (response.statusCode == 200) {
      var result = response.data; /// Change here
      print(result);
    } else {
      print("wrong server");
    }
  }
}