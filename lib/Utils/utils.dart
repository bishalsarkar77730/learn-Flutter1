import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ColorsUtils {
  static Color defaultThemeColor = Color(0xffFF8B20);
  static Color textFieldBorderColor = Color(0xff3684AA);
  static Color textFieldActiveIconColor = Color(0xff4E9CC2);
  static Color navigationBarColor = Color(0xffF2F2F2);
  static Color selectedBlueColor = Color(0xff2D68FE);
  static Color unselectedGreyColor = Color(0xff71839B);
  static Color unselectedBottomBarColor = Color(0xff939393);
  static Color dividerBlueColor = Color(0xff3684AA);
  static Color dividerGreyColor = Color(0xff5B5B5B);
}

class StylesUtils {
  static OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderSide: new BorderSide(color: ColorsUtils.textFieldBorderColor),
    borderRadius: BorderRadius.circular(10.0),
  );
}

class CommonFunctions {
  static void updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  static String getTodayDate() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
    return formattedDate;
  }

  static String convertToHHMM(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedTime =
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    return formattedTime;
  }

  static String convertToDDMMYY(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedTime =
        '${dateTime.day.toString()}-${dateTime.month.toString()}-${dateTime.year.toString()}';
    return formattedTime;
  }

  static String timeAgo(String dateTime) {
    List<String> parts = dateTime.split('-');
    int year = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[2]);
    final dateTimee = DateTime(year, month, day);

    final now = DateTime.now();
    final difference = now.difference(dateTimee);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else {
      final format = DateFormat('dd MMM, yyyy');
      return format.format(dateTimee);
    }
  }
}
