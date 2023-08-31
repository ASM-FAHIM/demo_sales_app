import 'package:demo_sales_app/core/utils/exports.dart';
import 'package:demo_sales_app/core/widgets/exports.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: const SizedBox(
        height: 56,
        width: 56,
        child: Center(
          child: SizedBox(
            width: 25,
            height: 25,
            child: CommonIconWidget(
              backBtnImagePath,
              width: 24,
              height: 24,
              color: blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
