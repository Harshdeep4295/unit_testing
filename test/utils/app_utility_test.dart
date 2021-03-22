import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/utils/app_utility.dart';

void main() {
  group("Checking cases for AppUtils.firstLetterCapitalise() Function", () {
    test("Checking for null value", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: null);

      expect(value, "-");
    });

    test("Checking for null empty String", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "");

      expect(value, "-");
    });

    test("Checking for null empty String", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "");

      expect(value, "-");
    });

    test("Checking for single character", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "a");

      expect(value, "A");
    });

    test("Checking for single number character", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "1");

      expect(value, "1");
    });

    test("Checking for number character", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "1a");

      expect(value, "1a");
    });

    test("Checking for string hello world!", () {
      String value =
          AppUtils.firstLetterCapitalise(stringValue: "hello world!");

      expect(value, "Hello world!");
    });

    test("Checking for string harshdeep", () {
      String value = AppUtils.firstLetterCapitalise(stringValue: "harshdeep");

      expect(value, "Harshdeep");
    });
  });

  group("checking function convertToNameCase", () {
    test("Checking for null", () {
      String value = AppUtils.convertToNameCase(name: null);

      expect(value, "-");
    });

    test("Checking for empty String", () {
      String value = AppUtils.convertToNameCase(name: "");

      expect(value, "-");
    });

    test("Checking for john-doe", () {
      String value = AppUtils.convertToNameCase(name: "john-doe");

      expect(value, "John-doe");
    });

    test("Checking for harshdeep singh", () {
      String value = AppUtils.convertToNameCase(name: "harshdeep singh");

      expect(value, "Harshdeep Singh");
    });
  });

  group("display name with dashes", () {
    test("Checking for null", () {
      String name = AppUtils.displayNameWithDash(
        string1: null,
        string2: null,
      );
      expect(name, "-");
    });

    test("Checking for anyone of the values to be null", () {
      String name = AppUtils.displayNameWithDash(
        string1: null,
        string2: "Hello",
      );
      expect(name, "-Hello");

      name = AppUtils.displayNameWithDash(
        string1: "Hello",
        string2: null,
      );
      expect(name, "Hello-");
    });

    test("Checking for John-, doe", () {
      String name = AppUtils.displayNameWithDash(
        string1: "John-",
        string2: "doe",
      );
      expect(name, "John-Doe");
    });

    test("Checking for harshdeep singh", () {
      String name = AppUtils.displayNameWithDash(
        string1: "harshdeep",
        string2: "singh",
      );
      expect(name, "Harshdeep-Singh");
    });
  });
}
