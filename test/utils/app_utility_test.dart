import 'package:HealthCheckUp/utils/app_utility.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Checking for null value in firstLetterCapitalise function", () {
    String value = AppUtils.firstLetterCapitalise(stringValue: null);

    expect(value, "-");
  });
}
