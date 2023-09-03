import 'package:demo_sales_app/core/utils/exports.dart';
import 'package:demo_sales_app/core/widgets/exports.dart';
import 'package:flutter/material.dart';

class BusinessAdvertiseWidget extends StatelessWidget {
  const BusinessAdvertiseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget('Powered By ',),
          Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage(businessImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
