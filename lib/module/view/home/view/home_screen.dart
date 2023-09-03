import 'package:demo_sales_app/core/utils/colors.dart';
import 'package:demo_sales_app/core/widgets/exports.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: TextWidget('HomePage'),
      ),
    );
  }
}
