import 'package:demo_sales_app/core/utils/colors.dart';
import 'package:demo_sales_app/core/utils/navigation.dart';
import 'package:demo_sales_app/core/widgets/exports.dart';
import 'package:flutter/material.dart';

class ViewUtil {
  static Future oSLSnackbar(
      String msg, {
        String? btnName,
        void Function()? onPressed,
      }) async {
    /**
     * Using ScaffoldMessenger we can easily access
     * this snackbar from anywhere
     */

    return ScaffoldMessenger.of(Navigation.key.currentContext!).showSnackBar(
      SnackBar(
        content: TextWidget(
          msg,
        ),
        action: SnackBarAction(
          label: btnName ?? '',
          textColor: btnName == null ? Colors.transparent : whiteColor,
          onPressed: onPressed ?? () {},
        ),
      ),
    );
  }

  // this varialble is for internet connection check.
  static bool isPresentedDialog = false;
  static Future showInternetDialog({
    required VoidCallback onPressed,
  }) async {
    await showDialog(
      context: Navigation.key.currentContext!,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog.
        return AlertDialog(
          title: TextWidget(
            'Connection Error',
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextWidget(
                'Your internet connection appears to be offline',
              ),
              const SizedBox(
                height: 25,
              ),
              CommonButton(
                btnHeight: 25,
                onTap: onPressed,
                buttonTitle: 'Try Again',
              ),
            ],
          ),
        );
      },
    );
  }

// global alert dialog
  static Future showAlertDialog({
    Widget? title,
    required Widget content,
    List<Widget>? actions,
    Color? alertBackgroundColor,
    bool? barrierDismissible,
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? contentPadding,
  }) async {
    // flutter defined function.
    await showDialog(
      context: Navigation.key.currentContext!,
      barrierDismissible: barrierDismissible ?? true,
      builder: (BuildContext context) {
        // return object of type Dialog.
        return AlertDialog(
          backgroundColor: alertBackgroundColor,
          contentPadding: contentPadding ??
              const EdgeInsets.fromLTRB(
                24,
                20,
                24,
                24,
              ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(8),
                ),
          ),
          title: title,
          content: content,
        );
      },
    );
  }

  static Future bottomSheet({
    required BuildContext context,
    bool? isDismissable,
    required Widget content,
    BoxConstraints? boxConstraints,
  }) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      constraints: boxConstraints,
      isScrollControlled: true,
      context: context,
      isDismissible: isDismissable ?? true,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x1a000000),
              offset: Offset(0, 1),
              blurRadius: 3,
            ),
          ],
          color: Color(0xffffffff),
        ),
        child: content,
      ),
    );
  }
}
