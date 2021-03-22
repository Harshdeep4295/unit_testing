class AppUtils {
  static String firstLetterCapitalise({String stringValue}) {
    if (stringValue == null || stringValue.isEmpty) return "-";
    stringValue = stringValue[0].toUpperCase() + stringValue.substring(1);
    return stringValue.replaceAll('-', ' ');
  }

  static String convertToNameCase({String name}) {
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
    String string1,
    String string2,
  }) {
    if (string1 == null && string2 == null) {
      return "-";
    } else if (string1 != null && string2 == null) {
      return firstLetterCapitalise(stringValue: string1) + "-";
    } else if (string1 == null && string2 != null) {
      return "-" + firstLetterCapitalise(stringValue: string2);
    }
    return firstLetterCapitalise(stringValue: string1).trim() +
        "-" +
        firstLetterCapitalise(stringValue: string2).trim();
  }
}
