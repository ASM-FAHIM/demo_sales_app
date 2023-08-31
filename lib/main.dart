import 'package:demo_sales_app/core/utils/colors.dart';
import 'package:demo_sales_app/core/utils/navigation.dart';
import 'package:demo_sales_app/core/utils/pref_helper.dart';
import 'package:demo_sales_app/module/view/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

Future<void> initServices() async {
  await PrefHelper.init();
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Force',
      navigatorKey: Navigation.key,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: primaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: whiteColor,
        ),
        primarySwatch: primarySwatchColor,
      ),
      home: const LoginScreen(),
    );
  }
}
