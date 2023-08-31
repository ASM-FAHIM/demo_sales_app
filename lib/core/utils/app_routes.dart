import 'package:flutter/material.dart';

import '../../module/view/auth/login/login_screen.dart';

enum AppRoutes {
  login,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {
      case AppRoutes.login:
        return const LoginScreen();
    }
  }
}