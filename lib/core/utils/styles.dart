import 'package:demo_sales_app/core/utils/exports.dart';
import 'package:flutter/cupertino.dart';

class TextStyles {
  static TextStyle title32 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 32,
    color: blackColor,
    fontFamily: 'poppins',
  );
  static final title22 = title32.copyWith(fontSize: 22);
  static final title20 = title32.copyWith(fontSize: 20);
  static final title16 = title32.copyWith(fontSize: 16, color: darkGrayColor);
  static final regular18 = title32.copyWith(fontSize: 18);
  static const regular16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: 'poppins',
  );
  static final regular15 = regular16.copyWith(fontSize: 15);
  static final regular14 = regular16.copyWith(
    fontSize: 14,
  );
  static final regular14White = regular16.copyWith(
    fontSize: 14,
    color: whiteColor,
  );
  static final regular12 = regular16.copyWith(
    fontSize: 12,
  );

  static final title11 = regular16.copyWith(
    fontSize: 11,
  );
}