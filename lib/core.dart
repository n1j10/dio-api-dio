// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http ;
//
// class Crud {
//   String baseUrl = 'https://dummyjson.com/';
//   postRequest ({required String url,required Map body ,String? token}) async{
//     final response = await
//     http.post(Uri.parse(baseUrl+url),
//         body:({
//         'username': 'emilys',
//         'password': 'emilyspass',
//         'expiresInMins': '30',
//         }),   ///boddddy
//     );///chose 2
//     if(response.statusCode==201 || response.statusCode==200){                 ///optinal line I can not to use it
//       var result = jsonDecode(response.body);
//       print(result); /// I can use response.body direct in print ()
//     }
//     else{
//       print("wrong server");
//     }
//   }
//   getRequest({required String url,String? token})async{
//     final response = await
//     http.get(Uri.parse(baseUrl+url));
//     if(response.statusCode==200){
//       var result = jsonDecode(response.body);  /// check hot body work without body in ythghhhghgh
//       print(result);
//
//     }else{
//       print("wrong server");
//     }
//     }
//     putRequest({required String url,required Map body ,String? token})async{
//     final response = await
//     http.put(Uri.parse(baseUrl+url),
//         // headers: {'Content-Type':'application/json' },
//         body: {
//         'title': 'I think I should shift to the moon',
//         }
//     );
//     if(response.statusCode==200){
//       var result = jsonDecode(response.body);
//       print(result);
//
//     }else{
//       print("wrong server");
//     }
//     }
//     deleteRequest({required String url,String? token})async{
//       final response = await
//
//       http.delete(Uri.parse(baseUrl+url));
//           if(response.statusCode==200){
//             var reslut = jsonDecode(response.body);
//             print(reslut);
//           }else{
//             print("wrong server");
//           }
//
//
//       }
//
//
//
















   ///Basic api
  // postRequest () async{
  //   final response = await
  //   http.post(Uri.parse('https://dummyjson.com/auth/login'),
  //     body:({
  //       'username': 'emilys',
  //       'password': 'emilyspass',
  //       'expiresInMins': '30',
  //     }),
  //   );///chose 2
  //   if(response.statusCode==201 || response.statusCode==200){                 ///optinal line I can not to use it
  //     var result = jsonDecode(response.body);
  //     print(result); /// I can use response.body direct in print ()
  //
  //   }
  //   else{
  //     print("wrong server");
  //   }
  //
  //
  // }


  //
  // getRequest()async{
  //   final response = await
  //   http.get(Uri.parse('https://dummyjson.com/products'));
  //   if(response.statusCode==200){
  //     var result = jsonDecode(response.body);  /// check hot body work without body in ythghhhghgh
  //     print(result);
  //
  //   }
  //
  // }











//
// }