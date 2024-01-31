import 'package:flutter_test/flutter_test.dart';
import 'package:dummy_project_2/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ProfileViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
