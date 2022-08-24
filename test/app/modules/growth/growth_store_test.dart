import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/growth/growth_store.dart';
 
void main() {
  late GrowthStore store;

  setUpAll(() {
    store = GrowthStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}