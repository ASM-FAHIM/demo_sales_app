import 'package:demo_sales_app/core/utils/exports.dart';
import 'package:demo_sales_app/core/widgets/exports.dart';
import 'package:demo_sales_app/module/view/auth/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _login = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(loginBGImage),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              _topSectionWidget(),
              const SizedBox(
                height: 20,
              ),
              _formSectionWidget(_login),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _topSectionWidget(){
    return SizedBox(
      height: 150,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            'Sales App',
            style: TextStyles.title32.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }

  Widget _formSectionWidget(LoginController login) {
    return Column(
      children: [
        CommonTextField(
          controller: login.email,
          hintText: 'Email',
        ),
        const SizedBox(
          height: 10,
        ),
        CommonTextField(
          controller: login.password,
          hintText: 'Password',
        ),
        const SizedBox(
          height: 20,
        ),
        CommonButton(
          btnHeight: 25,
          width: double.maxFinite,
          onTap: () {
            login.loginReq(context);
          },
          buttonTitle: 'Login',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
