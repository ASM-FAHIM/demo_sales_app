import 'package:demo_sales_app/module/view/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

enum AppRoutes {
  login,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {
      case AppRoutes.login:
        return LoginScreen();
    }
  }
}