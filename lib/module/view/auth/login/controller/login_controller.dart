import 'package:demo_sales_app/core/utils/view_utils.dart';
import 'package:demo_sales_app/core/widgets/global_loader.dart';
import 'package:demo_sales_app/module/view/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  Future<void> loginReq(BuildContext context) async{
    final map = <String, dynamic>{};
    map["name"] = name.text;
    map["email"] = email.text;
    map["password"] = password.text;

    await ViewUtil.showAlertDialog(content: GlobalLoader());
    Future.delayed(Duration(seconds: 2),(){
      print('delay occured');
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
    }).catchError((e){
      Navigator.pop(context);
    });


  }
}
