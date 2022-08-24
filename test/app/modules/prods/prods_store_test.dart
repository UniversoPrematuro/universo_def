import 'package:flutter_test/flutter_test.dart';
import 'package:universo_def/app/modules/prods/prods_store.dart';
 
void main() {
  late ProdsStore store;

  setUpAll(() {
    store = ProdsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}