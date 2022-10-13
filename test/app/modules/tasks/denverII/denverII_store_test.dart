import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/tasks/denverII/denverII_store.dart';
 
void main() {
  late DenverIIStore store;

  setUpAll(() {
    store = DenverIIStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}