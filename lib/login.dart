import 'package:flutter/material.dart';
import 'package:newfile/core.dart';
import 'package:newfile/coreDio.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Crud crud = Crud();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 122),
            child: Center(
              child: InkWell(onTap: (){
                setState(() {
                    crud.postRequest( url: 'auth/login', data: {
                      'username': 'emilys',
                      'password': 'emilyspass',
                      'expiresInMins': '30',
                    });
                    //  crud.getRequest(url: 'products');
                  // crud.putRequest( url: 'posts/1', body: {
                  //   'title': 'I think I should shift to the moon',
                  // });

                  // crud.deleteRequest( url: 'posts/1');        ///delete



                });
              },
                child: Container(
                  width: 200,
                  height: 75,
                  child: Center(child: Text('Click Here To Test Api',style: TextStyle(color: Colors.white),)
                  ),
                  decoration: BoxDecoration(color: Colors.blueGrey,

                      borderRadius: BorderRadius.circular(35)
                      
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}
