import 'package:flutter/material.dart';

class AppUtils {
  static String firstLetterCapitalise({@required String stringValue}) {
    if (stringValue == null || stringValue.isEmpty) return "-";
    stringValue = stringValue[0].toUpperCase() + stringValue.substring(1);
    return stringValue.replaceAll('-', ' ');
  }

  static String convertToNameCase({@required String name}) {
    String returnName = "";
    if (name == null || name == "") return "-";
    try {
      returnName = name.splitMapJoin((new RegExp(r'\s+\b|\b\s')),
          onNonMatch: (m) =>
              '${m.substring(0, 1).toUpperCase() + m.substring(1)}',
          onMatch: (n) => ' ');
    } on Exception catch (e) {
      print(e);
    }
    return returnName.trim();
  }

  static String displayNameWithDash({
    @required String string1,
    @required String string2,
  }) {
    return firstLetterCapitalise(stringValue: string1) +
        " - " +
        firstLetterCapitalise(stringValue: string2);
  }
}
