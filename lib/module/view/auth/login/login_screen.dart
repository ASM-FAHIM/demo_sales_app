import 'package:demo_sales_app/core/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(LoginController());
    return Scaffold(
      appBar: const CommonAppbar(title: "Login"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            /*SizedBox(
              height: 10.h,
            ),
            GlobalTextFormField(
              controller: controller.email,
              hintText: "Email",
            ),
            SizedBox(
              height: 10.h,
            ),
            GlobalTextFormField(
              controller: controller.password,
              hintText: "Password",
            ),
            const Spacer(),
            GlobalButton(
              onPressed: () {
                controller.loginReq(context);
              },
              buttonText: "Login",
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Navigation.push(
                  context,
                  appRoutes: AppRoutes.registration,
                );
              },
              child: const GlobalText(
                str: "Don't have an account? Sign Up",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),*/
          ],
        ),
      ),
    );
  }
}